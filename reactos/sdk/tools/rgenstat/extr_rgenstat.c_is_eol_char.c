
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_eol_char(char ch)
{
  if (ch == '\r')
    {
      return 1;
    }
  if (ch == '\n')
    {
      return 1;
    }
  return 0;
}
