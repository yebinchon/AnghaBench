
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_Value ;
typedef int js_State ;


 int CHECKSTACK (int) ;
 int * STACK ;
 size_t TOP ;

void js_pushvalue(js_State *J, js_Value v)
{
 CHECKSTACK(1);
 STACK[TOP] = v;
 ++TOP;
}
