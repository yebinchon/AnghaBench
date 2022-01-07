
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 int sprintf (char*,char*,int,double) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

char *
_gcvt (double value, int ndigits, char *buf)
{
  char *p = buf;

  sprintf (buf, "%-#.*g", ndigits, value);


  if (*p == '-')
    p++;
  if (*p == '0' && p[1] == '.')
    memmove (p, p + 1, strlen (p + 1) + 1);


  p = strchr (buf, 'e');
  if (!p)
    {
      p = buf + strlen (buf);

      while (p[-1] == '0' && p > buf + 2)
 *--p = '\0';
    }
  if (p > buf && p[-1] == '.')
    memmove (p - 1, p, strlen (p) + 1);
  return buf;
}
