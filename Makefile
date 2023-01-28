.PHONY: install-dev test check-cs

DEV_DEPENDENCIES = cakephp/cakephp:5.x-dev \
  cakephp/cakephp-codesniffer:^5.0 \
  mikey179/vfsstream:^1.6.8 \
  phpunit/phpunit:^9.5

install-dev:
	composer require --dev $(DEV_DEPENDENCIES)

install-dev-lowest:
	composer require --dev --prefer-lowest $(DEV_DEPENDENCIES)

install-dev-ignore-reqs:
	composer require --dev --ignore-platform-reqs $(DEV_DEPENDENCIES)

test: install-dev
	composer test

cs-check: install-dev
	composer cs-check
