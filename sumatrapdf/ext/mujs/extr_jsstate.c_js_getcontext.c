
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* uctx; } ;
typedef TYPE_1__ js_State ;



void *js_getcontext(js_State *J)
{
 return J->uctx;
}
