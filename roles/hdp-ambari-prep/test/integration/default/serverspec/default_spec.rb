require 'serverspec'

case os[:family] 
when 'redhat'
  describe yumrepo('Updates-ambari-2.2.0.0') do
    it { should exist } 
  end
when 'debian'
  # don't know how to test it yet.
end
