
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_whitespace(char ch)
{
  if (ch == ' ')
    {
      return 1;
    }
  if (ch == '\t')
    {
      return 1;
    }
  return 0;
}
