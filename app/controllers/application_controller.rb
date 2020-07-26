class ApplicationController < ActionController::Base
  ## ここから追加
  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_USER"] && password == ENV["BASIC_PASSWORD"]
    end
  end
  ## ここまで
end
