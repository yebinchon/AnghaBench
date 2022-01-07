
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int actx; int (* alloc ) (int ,void*,int ) ;} ;
typedef TYPE_1__ js_State ;


 int stub1 (int ,void*,int ) ;

void js_free(js_State *J, void *ptr)
{
 J->alloc(J->actx, ptr, 0);
}
