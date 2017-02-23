module Orbital
  class ElementSet
    # All radial units are in degrees, with *_rad getters supplied below for 
    # convenient conversion to radians.

    attr_reader :satellite_name, :satellite_number, :inclination, :raan, 
      :eccentricity, :argument_of_perigee, :mean_anomaly, :mean_motion, 
      :orbit_number, :raw

    def initialize(params={})
      @satellite_name = params[:satellite_name]
      @satellite_number = params[:satellite_number]
      @inclination = params[:inclination]
      @raan = params[:raan]
      @eccentricity = params[:eccentricity]
      @argument_of_perigee = params[:argument_of_perigee]
      @mean_anomaly = params[:mean_anomaly]
      @mean_motion = params[:mean_motion]
      @orbit_number = params[:orbit_number]
      @raw = params[:raw]
    end

    def inclination_rad
      to_rad(inclination)
    end

    def raan_rad
      to_rad(raan)
    end

    def argument_of_perigee_rad
      to_rad(argument_of_perigee)
    end

    def mean_anomaly_rad
      to_rad(mean_anomaly)
    end

  private

    def to_rad(deg)
      deg * Math::PI / 180.0
    end
  end
end