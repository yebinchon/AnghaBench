
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int G; } ;
typedef TYPE_1__ js_State ;


 int jsR_setproperty (TYPE_1__*,int ,char const*) ;
 int js_pop (TYPE_1__*,int) ;

void js_setglobal(js_State *J, const char *name)
{
 jsR_setproperty(J, J->G, name);
 js_pop(J, 1);
}
