
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsLocalPathDelim (int) ;

__attribute__((used)) static char *
_StrRFindLocalPathDelim(const char *src)
{
 const char *last;
 int c;

 last = ((void*)0);
 for (;;) {
  c = *src++;
  if (c == '\0')
   break;
  if (IsLocalPathDelim(c))
   last = src - 1;
 }

 return ((char *) last);
}
