
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R; } ;
typedef TYPE_1__ js_State ;


 int jsR_delproperty (TYPE_1__*,int ,char const*) ;

void js_delregistry(js_State *J, const char *name)
{
 jsR_delproperty(J, J->R, name);
}
