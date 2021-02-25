class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @user.bookings
    end

    def create?
      return true
    end

    def update?
      record.user == user
    end

    def destroy?
      record.user == user
    end
  end
end
