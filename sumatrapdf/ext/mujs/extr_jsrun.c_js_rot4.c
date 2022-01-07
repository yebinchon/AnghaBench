
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_Value ;
typedef int js_State ;


 int * STACK ;
 int TOP ;

void js_rot4(js_State *J)
{

 js_Value tmp = STACK[TOP-1];
 STACK[TOP-1] = STACK[TOP-2];
 STACK[TOP-2] = STACK[TOP-3];
 STACK[TOP-3] = STACK[TOP-4];
 STACK[TOP-4] = tmp;
}
