
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsB_new_RegExp (int *) ;
 scalar_t__ js_isregexp (int *,int) ;

__attribute__((used)) static void jsB_RegExp(js_State *J)
{
 if (js_isregexp(J, 1))
  return;
 jsB_new_RegExp(J);
}
