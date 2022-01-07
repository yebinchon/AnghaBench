
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char const) ;

const char *
format_skip(const char *s, const char *end)
{
 int brackets = 0;

 for (; *s != '\0'; s++) {
  if (*s == '#' && s[1] == '{')
   brackets++;
  if (*s == '#' && strchr(",#{}", s[1]) != ((void*)0)) {
   s++;
   continue;
  }
  if (*s == '}')
   brackets--;
  if (strchr(end, *s) != ((void*)0) && brackets == 0)
   break;
 }
 if (*s == '\0')
  return (((void*)0));
 return (s);
}
