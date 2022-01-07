
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ishex (char) ;
 int tohex (int ) ;

char *
fz_urldecode(char *url)
{
 char *s = url;
 char *p = url;
 while (*s)
 {
  int c = (unsigned char) *s++;
  if (c == '%' && ishex(s[0]) && ishex(s[1]))
  {
   int a = tohex(*s++);
   int b = tohex(*s++);
   *p++ = a << 4 | b;
  }
  else
  {
   *p++ = c;
  }
 }
 *p = 0;
 return url;
}
