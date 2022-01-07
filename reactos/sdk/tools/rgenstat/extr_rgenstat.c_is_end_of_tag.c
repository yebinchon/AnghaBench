
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_end_of_tag(char ch)
{
  if ((ch >= 'a') && (ch <= 'z'))
    {
      return 0;
    }
  if ((ch >= 'A') && (ch <= 'Z'))
    {
      return 0;
    }
  if ((ch >= '0') && (ch <= '9'))
    {
      return 0;
    }
  if (ch == '_')
    {
      return 0;
    }
  return 1;
}
