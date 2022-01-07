
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int * STACK ;
 int TOP ;

void js_rot2pop1(js_State *J)
{

 STACK[TOP-2] = STACK[TOP-1];
 --TOP;
}
