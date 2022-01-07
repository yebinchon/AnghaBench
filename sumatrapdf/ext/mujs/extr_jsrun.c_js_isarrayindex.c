
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int INT_MAX ;

int js_isarrayindex(js_State *J, const char *p, int *idx)
{
 int n = 0;
 while (*p) {
  int c = *p++;
  if (c >= '0' && c <= '9') {
   if (n >= INT_MAX / 10)
    return 0;
   n = n * 10 + (c - '0');
  } else {
   return 0;
  }
 }
 return *idx = n, 1;
}
