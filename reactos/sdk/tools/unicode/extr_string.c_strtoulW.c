
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int ERANGE ;
 unsigned long ULONG_MAX ;
 int errno ;
 scalar_t__ isalphaW (char) ;
 scalar_t__ isspaceW (char const) ;
 char toupperW (char const) ;

unsigned long int strtoulW( const WCHAR *nptr, WCHAR **endptr, int base )
{
  int negative;
  register unsigned long int cutoff;
  register unsigned int cutlim;
  register unsigned long int i;
  register const WCHAR *s;
  register WCHAR c;
  const WCHAR *save, *end;
  int overflow;

  if (base < 0 || base == 1 || base > 36) return 0;

  save = s = nptr;


  while (isspaceW (*s))
    ++s;
  if (!*s) goto noconv;


  negative = 0;
  if (*s == '-')
    {
      negative = 1;
      ++s;
    }
  else if (*s == '+')
    ++s;


  if (*s == '0')
    {
      if ((base == 0 || base == 16) && toupperW(s[1]) == 'X')
 {
   s += 2;
   base = 16;
 }
      else if (base == 0)
 base = 8;
    }
  else if (base == 0)
    base = 10;


  save = s;
  end = ((void*)0);

  cutoff = ULONG_MAX / (unsigned long int) base;
  cutlim = ULONG_MAX % (unsigned long int) base;

  overflow = 0;
  i = 0;
  c = *s;
  for (;c != '\0'; c = *++s)
  {
      if (s == end)
          break;
      if (c >= '0' && c <= '9')
          c -= '0';
      else if (isalphaW (c))
          c = toupperW (c) - 'A' + 10;
      else
          break;
      if ((int) c >= base)
          break;

      if (i > cutoff || (i == cutoff && c > cutlim))
          overflow = 1;
      else
      {
          i *= (unsigned long int) base;
          i += c;
      }
  }


  if (s == save)
    goto noconv;



  if (endptr != ((void*)0))
    *endptr = (WCHAR *)s;

  if (overflow)
    {
      errno = ERANGE;
      return ULONG_MAX;
    }


  return negative ? -i : i;

noconv:




  if (endptr != ((void*)0))
    {
      if (save - nptr >= 2 && toupperW (save[-1]) == 'X'
   && save[-2] == '0')
 *endptr = (WCHAR *)&save[-1];
      else

 *endptr = (WCHAR *)nptr;
    }

  return 0L;
}
