class DailyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.daily_mailer.daily_notification.subject
  #
  def daily_notification
    default to: -> { User.plick(:email) }

    mail(subject: "Daily Report of Your Record")
  end
end
