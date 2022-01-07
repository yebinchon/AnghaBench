
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_endtry (int *) ;
 int js_loadfile (int *,char const*) ;
 scalar_t__ js_try (int *) ;

int js_ploadfile(js_State *J, const char *filename)
{
 if (js_try(J))
  return 1;
 js_loadfile(J, filename);
 js_endtry(J);
 return 0;
}
