PORT?=3000
RACK_ENV?=production

render-build:
	bundle install
	bundle exec rails assets:precompile
	bundle exec rails assets:clean
	bundle exec rails db:migrate

render-start:
	bundle exec puma -t 5:5 -p ${PORT} -e ${RACK_ENV}

start:
	rm -rf tmp/pids/server.pid || true
	bin/rails s

setup: install
	bin/rails assets:precompile
	make db-prepare

install:
	bin/setup

db-prepare:
	bin/rails db:reset
	bin/rails db:fixtures:load

check: test lint

test:
	bin/rails test

lint:
	bundle exec rubocop
	bundle exec slim-lint app/views/

lint-fix:
	bundle exec rubocop -A

.PHONY: test
