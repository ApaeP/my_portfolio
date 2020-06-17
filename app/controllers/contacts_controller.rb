class ContactsController < ApplicationController

  def create
    @contact =  Contact.new(contact_params)
    if @contact.save
      ContactMailer.with(contact: @contact).mail_to_owner.deliver_later
    else
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :content)
  end
end
