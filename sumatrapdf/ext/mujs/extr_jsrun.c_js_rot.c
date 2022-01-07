
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_Value ;
typedef int js_State ;


 int * STACK ;
 int TOP ;

void js_rot(js_State *J, int n)
{
 int i;
 js_Value tmp = STACK[TOP-1];
 for (i = 1; i < n; ++i)
  STACK[TOP-i] = STACK[TOP-i-1];
 STACK[TOP-i] = tmp;
}
