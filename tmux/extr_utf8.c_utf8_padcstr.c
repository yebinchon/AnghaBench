
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ utf8_cstrwidth (char const*) ;
 char* xmalloc (scalar_t__) ;
 char* xstrdup (char const*) ;

char *
utf8_padcstr(const char *s, u_int width)
{
 size_t slen;
 char *out;
 u_int n, i;

 n = utf8_cstrwidth(s);
 if (n >= width)
  return (xstrdup(s));

 slen = strlen(s);
 out = xmalloc(slen + 1 + (width - n));
 memcpy(out, s, slen);
 for (i = n; i < width; i++)
  out[slen++] = ' ';
 out[slen] = '\0';
 return (out);
}
