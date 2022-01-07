
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int BOT ;
 int CHECKSTACK (int) ;
 int * STACK ;
 size_t TOP ;

void js_currentfunction(js_State *J)
{
 CHECKSTACK(1);
 STACK[TOP] = STACK[BOT-1];
 ++TOP;
}
