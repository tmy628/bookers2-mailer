class ThanksMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanks_mailer.thanks_mail.subject
  #
  def thanks_mail(email, name)
    @name = name

    mail to: email, subject: 'Registration Complete! Thanks for Joining!'
  end
end
