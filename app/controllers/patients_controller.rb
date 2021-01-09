class PatientsController < ApplicationController
    def show
        @patient = Patient.find_by(id: params[:id])
        @appt = @patient.appointments
    end

    def index
        @patient = Patient.all
    end
end
