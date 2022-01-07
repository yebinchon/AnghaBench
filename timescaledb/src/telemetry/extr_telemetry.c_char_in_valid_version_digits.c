
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
char_in_valid_version_digits(const char c)
{
 switch (c)
 {
  case '.':
  case '-':
   return 1;
  default:
   return 0;
 }
}
