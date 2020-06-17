class ContactMailer < ApplicationMailer
  def mail_to_owner
    @contact = params[:contact]
    mail(to: ENV['OWNER_MAIL'], subject: "DevPortfolio | Nouveau contact de la part de #{@contact.name} (n°#{@contact.id})")
  end

  def mail_to_contact
    @contact = params[:contact]
    if @contact.email
      mail(to: @contact.email, subject: "Développeur Fullstack - Paul Portier | Votre demande de contact")
    end
  end
end
