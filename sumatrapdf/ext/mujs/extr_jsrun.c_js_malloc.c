
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int actx; void* (* alloc ) (int ,int *,int) ;} ;
typedef TYPE_1__ js_State ;


 int js_outofmemory (TYPE_1__*) ;
 void* stub1 (int ,int *,int) ;

void *js_malloc(js_State *J, int size)
{
 void *ptr = J->alloc(J->actx, ((void*)0), size);
 if (!ptr)
  js_outofmemory(J);
 return ptr;
}
