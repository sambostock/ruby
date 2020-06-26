require_relative '../../spec_helper'

describe "Range#minmax" do
  before :each do
    # @enum = EnumerableSpecs::Numerous.new(6, 4, 5, 10, 8)

    # @strs = EnumerableSpecs::Numerous.new("333", "2", "60", "55555", "1010", "111")
  end

  it "min should return the minimum element" do
    (4..10).minmax.should == [4, 10]
    (4...10).minmax.should == [4, 9]
    ('a'..'c').minmax.should == ['a', 'c']
    ('a'...'c').minmax.should == ['a', 'b']

    skip
    # @enum.minmax.should == [4, 10]
    # @strs.minmax.should == ["1010", "60" ]
  end

  it "returns [nil, nil] for an empty Enumerable" do
    skip
    # EnumerableSpecs::Empty.new.minmax.should == [nil, nil]
  end

  it "raises an ArgumentError when elements are incomparable" do
    skip
    # -> do
    #   EnumerableSpecs::Numerous.new(11,"22").minmax
    # end.should raise_error(ArgumentError)
    # -> do
    #   EnumerableSpecs::Numerous.new(11,12,22,33).minmax{|a, b| nil}
    # end.should raise_error(ArgumentError)
  end

  it "raises a NoMethodError for elements without #<=>" do
    skip
    # -> do
    #   EnumerableSpecs::Numerous.new(BasicObject.new, BasicObject.new).minmax
    # end.should raise_error(NoMethodError)
  end

  it "returns the minimum when using a block rule" do
    skip
    # @enum.minmax {|a,b| b <=> a }.should == [10, 4]
    # @strs.minmax {|a,b| a.length <=> b.length }.should == ["2", "55555"]
  end

  it "gathers whole arrays as elements when each yields multiple" do
    skip
    # multi = EnumerableSpecs::YieldsMulti.new
    # multi.minmax.should == [[1, 2], [6, 7, 8, 9]]
  end
end
