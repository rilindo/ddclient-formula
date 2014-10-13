require 'serverspec'

set :backend, :exec

describe "ddclient service" do

  it "has a running service of ddclient" do
    expect(service("ddclient")).to be_running
  end

end
