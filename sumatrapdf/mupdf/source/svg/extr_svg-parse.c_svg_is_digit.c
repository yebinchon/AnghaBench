
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int svg_is_digit(int c)
{
 return (c >= '0' && c <= '9') ||
  (c == 'e') || (c == 'E') ||
  (c == '+') || (c == '-') || (c == '.');
}
