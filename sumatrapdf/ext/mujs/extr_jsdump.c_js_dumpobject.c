
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {TYPE_2__* properties; } ;
typedef TYPE_1__ js_Object ;
struct TYPE_5__ {scalar_t__ level; } ;


 int js_dumpproperty (int *,TYPE_2__*) ;
 scalar_t__ minify ;
 int printf (char*) ;

void js_dumpobject(js_State *J, js_Object *obj)
{
 minify = 0;
 printf("{\n");
 if (obj->properties->level)
  js_dumpproperty(J, obj->properties);
 printf("}\n");
}
