
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int wcslen (char const*) ;

__attribute__((used)) static unsigned FindExt(const wchar_t *s, unsigned *extLen)
{
  unsigned len = (unsigned)wcslen(s);
  unsigned i;
  for (i = len; i > 0; i--)
  {
    if (s[i - 1] == '.')
    {
      *extLen = len - i;
      return i - 1;
    }
  }
  *extLen = 0;
  return len;
}
