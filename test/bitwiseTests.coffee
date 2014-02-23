libDir = "../lib"

BitwiseTests = require("#{libDir}/bitwiseTests.coffee")

describe 'BitwiseTests', ->
  testOpts =
    initialNumber: 255
    initialArray: [255,255,255]

  it 'should return a correct binary string', ->
    bitwiseTests = new BitwiseTests()
    binary = bitwiseTests.intToBinary(testOpts.initialNumber)
    binary.should.equal "11111111"

  it 'should return a correct hexadecimal string', ->
    bitwiseTests = new BitwiseTests()
    binary = bitwiseTests.intToHexadecimal(testOpts.initialNumber)
    binary.should.equal "ff"

  it 'should return a correct binary string from an array', ->
    bitwiseTests = new BitwiseTests()
    binary = bitwiseTests.arrayToBinary(testOpts.initialArray)
    binary.should.equal "111111111111111111111111"

  it 'should return a correct hexadecimal string from an array', ->
    bitwiseTests = new BitwiseTests()
    binary = bitwiseTests.arrayToHexadecimal(testOpts.initialArray)
    binary.should.equal "ffffff"
