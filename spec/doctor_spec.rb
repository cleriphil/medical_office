require('spec_helper')

describe(Doctor) do
  describe('#id') do
    it("returns the id") do
    doctor_j = Doctor.new({:name => "Dr.Jones", :specialty => "podiatry", :id => 1})
    expect(doctor_j.id()).to(eq(1))
    end
  end

  describe('#name') do
    it("returns the name") do
      doctor_p = Doctor.new({:name => "Dr.Peters", :specialty => "oncology", :id => 2})
      expect(doctor_p.name()).to(eq("Dr.Peters"))
    end
  end
  describe('#specialty') do
    it("returns the specialty") do
      doctor_w = Doctor.new({:name => "Dr.Walls", :specialty => "chiropractics", :id => 3})
      expect(doctor_w.specialty()).to(eq("chiropractics"))
    end
  end
  describe('.all') do
    it("starts off empty") do
      expect(Doctor.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("saves a doctor to the database") do
      doctor = Doctor.new({:name => "Dr.Peters", :specialty => "oncology", :id => nil})
      doctor.save()
      expect(Doctor.all()).to(eq([doctor]))
    end
  end



end
