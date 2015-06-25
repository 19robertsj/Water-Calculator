class Calculator
  
  def initialize(weight_convert, workout_add=0.0, temperature_warn=0.0)
    @weight_convert = weight_convert.to_f
    @workout_add = workout_add.to_f
    @temperature_warn = temperature_warn.to_f
    @ounces = 0.0
    @total_ounces_output = 0.0
  end
  
  def convert_weight
    @ounces = @weight_convert * 2/3  
  end
  def add_workout
    number_of_thirties= @workout_add/30 
    @ounce = number_of_thirties * 12
  end
  def warn_temperature
    if @temperature_warn >= 70.0
      return "Based on today's warm temperature, we advise you to drink more water than usual."
    end
  end
end
  