require "./employee.rb"
require "./intern.rb"
require "./manager.rb"

employee_1 = Actualize::Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Actualize::Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          )

manager = Actualize::Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

intern = Actualize::Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 20000,
                    active: true
                    )

employee_1.print_info
employee_2.print_info

manager.give_all_raises
manager.fire_all_employees

employee_1.print_info
employee_2.print_info

p intern
