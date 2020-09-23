# frozen_string_literal: true

Typhoeus::Config.user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:80.0) Gecko/20100101 Firefox/80.0'
API_RETRIES ||= ENV.fetch('API_RETRIES', 2)
