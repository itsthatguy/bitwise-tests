class BitwiseTests

  arrayToBinary: (array) -> (array.map (n) => @intToBinary(n)).join('')
  arrayToHexadecimal: (array) -> (array.map (n) => @intToHexadecimal(n)).join('')
  intToHexadecimal: (number) -> return parseInt(number).toString(16)
  intToBinary: (number) -> return parseInt(number).toString(2)

module.exports = BitwiseTests
