
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_endtry (int *) ;
 int js_loadstring (int *,char const*,char const*) ;
 scalar_t__ js_try (int *) ;

int js_ploadstring(js_State *J, const char *filename, const char *source)
{
 if (js_try(J))
  return 1;
 js_loadstring(J, filename, source);
 js_endtry(J);
 return 0;
}
