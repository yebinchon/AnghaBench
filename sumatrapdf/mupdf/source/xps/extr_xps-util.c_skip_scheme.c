
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
skip_scheme(char *path)
{
 char *p = path;


 if (*p >= 'a' && *p <= 'z')
 {}
 else if (*p >= 'A' && *p <= 'Z')
 {}
 else
  return path;

 while (*++p)
 {
  if (*p >= 'a' && *p <= 'z')
  {}
  else if (*p >= 'A' && *p <= 'Z')
  {}
  else if (*p >= '0' && *p <= '9')
  {}
  else if (*p == '+')
  {}
  else if (*p == '-')
  {}
  else if (*p == '.')
  {}
  else if (*p == ':')
   return p+1;
  else
   break;
 }
 return path;
}
