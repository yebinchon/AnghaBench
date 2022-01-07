
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef scalar_t__ utf8proc_ssize_t ;


 scalar_t__ utf8proc_iterate (char const*,size_t,scalar_t__*) ;

int
utf8proc_mbtowc(wchar_t *pwc, const char *s, size_t n)
{
 utf8proc_ssize_t slen;

 if (s == ((void*)0))
  return (0);





 slen = utf8proc_iterate(s, n, pwc);
 if (*pwc == (wchar_t)-1 || slen < 0)
  return (-1);
 return (slen);
}
