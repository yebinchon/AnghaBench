
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
Vt100VisibleStrlen(const char *src)
{
 const char *cp;
 size_t esc;

 for (esc = 0, cp = src; *cp != '\0'; cp++) {
  if (*cp == '\033')
   esc++;
 }




 return ((size_t) (cp - src) - (esc * 4));
}
