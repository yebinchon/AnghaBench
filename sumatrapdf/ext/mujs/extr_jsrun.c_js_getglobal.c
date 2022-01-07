
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int G; } ;
typedef TYPE_1__ js_State ;


 int jsR_getproperty (TYPE_1__*,int ,char const*) ;

void js_getglobal(js_State *J, const char *name)
{
 jsR_getproperty(J, J->G, name);
}
