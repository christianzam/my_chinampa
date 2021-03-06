class ReminderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_plant: user.user_plants)
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    return true
  end

  def update?
    record.user_plant.user == user
  end

  def destroy?
    record.user == user
  end
end
