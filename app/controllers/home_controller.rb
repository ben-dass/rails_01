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

  def passDataToViews
    @message = "<h1>Hello World from Rails 8!</h1>"
    @message += "<h2>Hello World from Rails 8!</h2>"
    @message += "<h3>Hello World from Rails 8!</h3>"
    @message += "<h4>Hello World from Rails 8!</h4>"
    @message += "<h5>Hello World from Rails 8!</h5>"
    @message += "<h6>Hello World from Rails 8!</h6>"
  end

  def showDateTimeInfo
    @currentTime = DateTime.now
  end

  def conditionalRendering
    @data = {
      "name": "Jimmy Anderson",
      "isVisible": true,
      "loggedIn": true,
      "countryCode": "US",
      "workExperience": 45,
      "stateCode": nil
    }
  end

  def loopThroughArrays
    @Products = []

    # console
    # debugger

    @Products.push(
      {
        "productID": 0,
        "productName": "AMD Ryzen 3990",
        "quantity": 100,
        "unitsInStock": 50,
        "discontinued": "True",
        "cost": 3000
      }
    )

    @Products.push(
      {
        "productID": 1,
        "productName": "AMD Ryzen 3980",
        "quantity": 100,
        "unitsInStock": 50,
        "discontinued": "True",
        "cost": 3000
      }
    )

    @Products.push(
      {
        "productID": 2,
        "productName": "AMD Ryzen 3970",
        "quantity": 100,
        "unitsInStock": 50,
        "discontinued": "True",
        "cost": 3000
      }
    )

    # debugger

    @Products.push(
      {
        "productID": 3,
        "productName": "AMD Ryzen 3960",
        "quantity": 100,
        "unitsInStock": 50,
        "discontinued": "True",
        "cost": 3000
      }
    )

    @Products.push(
      {
        "productID": 4,
        "productName": "AMD Ryzen 3950",
        "quantity": 100,
        "unitsInStock": 50,
        "discontinued": "True",
        "cost": 3000
      }
    )

    @Products.push(
      {
        "productID": 5,
        "productName": "AMD Ryzen 3940",
        "quantity": 100,
        "unitsInStock": 50,
        "discontinued": "True",
        "cost": 3000
      }
    )
  end

  def loggingTutorial
    Rails.logger.debug("DEBUG: The debug level should be used for detailed messages that assist in debug.")
    Rails.logger.info("INFO: The info level provides information regarding normal application proceesses.")
    Rails.logger.warn("WARN: Warnings indicate something is wrong. It might be an error.")
    Rails.logger.error("ERROR: Information describing a major problem that has occurred.")
    Rails.logger.fatal("FATAL: Fatal logs should only be used when something crashes the application.")
  end
end
