
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {struct TYPE_4__* prototype; int * properties; } ;
typedef TYPE_1__ js_Object ;
typedef int js_Iterator ;


 int * itwalk (int *,int *,int *,TYPE_1__*) ;
 int sentinel ;

__attribute__((used)) static js_Iterator *itflatten(js_State *J, js_Object *obj)
{
 js_Iterator *iter = ((void*)0);
 if (obj->prototype)
  iter = itflatten(J, obj->prototype);
 if (obj->properties != &sentinel)
  iter = itwalk(J, iter, obj->properties, obj->prototype);
 return iter;
}
