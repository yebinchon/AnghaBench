
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panic; } ;
typedef TYPE_1__ js_State ;
typedef int js_Panic ;



js_Panic js_atpanic(js_State *J, js_Panic panic)
{
 js_Panic old = J->panic;
 J->panic = panic;
 return old;
}
