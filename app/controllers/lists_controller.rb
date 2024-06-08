class ListsController < ApplicationController
  def new
    @list =List.new

  end
  def create

    @list =List.new(list_params)

   if  @list.save

   redirect_to list_path(@list.id)
 else

   render :new
 end
 
 @image =Image.new(image_params)
 
 if @image.save
     redirect_to @image,notice:"Image uploaded successfully. "
 else
     render :new
 end 
  end

 def index
    @lists= List.all
 end

  def show
    @list =List.find(params[:id])
  end

  def edit
    @list= List.find(params[:id])

     end

  def update


  def destroy
    list=List.find(params[:id])
    list.destroy
    redirect_to '/lists'
  end
private

  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)

end

def image_params
    params.require(:image).permit(:image)
end

end
 end
