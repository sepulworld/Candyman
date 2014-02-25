require 'minitest/autorun'
require_relative '../ldap.rb'
require_relative '../candyman_wrangle.rb'
require_relative '../candyman_log.rb'

# requires vagrant-ldap to be started on localdev system

class LdapTest < MiniTest::Unit::TestCase
  
  def setup
    @connection = Ldap.new("localhost", "dsbrodate", "3890")
  end

  def connection
   @connection
  end

  def ldap_ldif_output
     assert_equal "dsbrodate", connection.ldif_output("admin")
  end

end
