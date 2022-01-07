
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int toint(const char **sp, int w, int *v)
{
 const char *s = *sp;
 *v = 0;
 while (w--) {
  if (*s < '0' || *s > '9')
   return 0;
  *v = *v * 10 + (*s++ - '0');
 }
 *sp = s;
 return 1;
}
