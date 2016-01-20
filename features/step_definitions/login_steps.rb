Given(/^the login page$/) do
  visit '/'
end

When(/^I log in with proper credentials$/) do
  fill_in 'username', with: 'proper_cred'
  fill_in 'password', with: 'proper_cred'
  click_button 'Login'
end

Then(/^I should see the secret page$/) do
  expect(page.current_path).to eq '/dashboard'
  page.should have_content('This is the secret page.')
end
