
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int G; } ;
typedef TYPE_1__ js_State ;


 int js_pushobject (TYPE_1__*,int ) ;

void js_pushglobal(js_State *J)
{
 js_pushobject(J, J->G);
}
