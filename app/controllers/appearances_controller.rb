class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    @episode = Episode.find(params[:appearance][:episode_id])
    return redirect_to new_appearance_path unless @appearance.save
    redirect_to episode_path(@episode)
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
