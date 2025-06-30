class HomeController < ApplicationController
  def index
    # render plain: "Hello World from Rails 8"

    message = "<h1>Hello World from Rails 8!</h1>"
    message += "<h2>Hello World from Rails 8!</h2>"
    message += "<h3>Hello World from Rails 8!</h3>"
    message += "<h4>Hello World from Rails 8!</h4>"
    message += "<h5>Hello World from Rails 8!</h5>"
    message += "<h6>Hello World from Rails 8!</h6>"

    render html: message.html_safe
  end

  def getQueryStringValues
    message = ""

    if params[:message]
      message += "<h1>Message is: " + params[:message] + "</h1>"
    else
      message += "<h1>No value found in [:message]...</h1>"
    end

    if params[:country]
      message += "<h1>Country is: " + params[:country] + "</h1>"
    else
      message += "<h1>No value found in [:country]...</h1>"
    end

    message += "<h1>Controller name is: " + params[:controller] + "</h1>"
    message += "<h1>Action name is: " + params[:action] + "</h1>"

    render html: message.html_safe
  end
end
