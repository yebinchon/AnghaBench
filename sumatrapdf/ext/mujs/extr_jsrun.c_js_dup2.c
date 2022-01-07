
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int CHECKSTACK (int) ;
 int * STACK ;
 size_t TOP ;

void js_dup2(js_State *J)
{
 CHECKSTACK(2);
 STACK[TOP] = STACK[TOP-2];
 STACK[TOP+1] = STACK[TOP-1];
 TOP += 2;
}
