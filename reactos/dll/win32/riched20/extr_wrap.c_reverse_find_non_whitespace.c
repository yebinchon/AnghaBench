
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 scalar_t__ ME_IsWSpace (int const) ;

__attribute__((used)) static int reverse_find_non_whitespace(const WCHAR *s, int start)
{
  int i;
  for (i = start; i > 0 && ME_IsWSpace( s[i - 1] ); i--)
    ;

  return i;
}
