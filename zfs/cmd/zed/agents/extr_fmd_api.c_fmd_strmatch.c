
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
fmd_strmatch(const char *s, const char *p)
{
 char c;

 if (p == ((void*)0))
  return (0);

 if (s == ((void*)0))
  s = "";

 do {
  if ((c = *p++) == '\0')
   return (*s == '\0');

  if (c == '*') {
   while (*p == '*')
    p++;

   if (*p == '\0')
    return (1);

   while (*s != '\0') {
    if (fmd_strmatch(s++, p) != 0)
     return (1);
   }

   return (0);
  }
 } while (c == *s++);

 return (0);
}
