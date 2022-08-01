Before do |scenario|
      Capybara.current_session.driver.manage.delete_all_cookie
end
   

              
          


After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/','_')

    if scenario.failed?
        print_screen(scenario_name.downcase!, 'Failed')

    else   
        print_screen(scenario_name.downcase!, 'Sucess')
   
       
   end    

end

