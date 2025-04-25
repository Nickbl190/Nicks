#!/bin/bash

echo "Digite o primeiro número:"
read num1

echo "Digite o operador (+, -, *, /):"
read op

echo "Digite o segundo número:"
read num2

case $op in
  +) result=$(echo "$num1 + $num2" | bc) ;;
  -) result=$(echo "$num1 - $num2" | bc) ;;
  \*) result=$(echo "$num1 * $num2" | bc) ;;
  /) result=$(echo "scale=2; $num1 / $num2" | bc) ;;
  *) echo "Operador inválido!" ; exit 1 ;;
esac

echo "Resultado: $result"
