
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ strict; } ;
typedef TYPE_1__ js_State ;
typedef int js_Property ;
struct TYPE_9__ {int properties; int extensible; } ;
typedef TYPE_2__ js_Object ;


 int insert (TYPE_1__*,TYPE_2__*,int ,char const*,int **) ;
 int js_typeerror (TYPE_1__*,char*) ;
 int * lookup (int ,char const*) ;

js_Property *jsV_setproperty(js_State *J, js_Object *obj, const char *name)
{
 js_Property *result;

 if (!obj->extensible) {
  result = lookup(obj->properties, name);
  if (J->strict && !result)
   js_typeerror(J, "object is non-extensible");
  return result;
 }

 obj->properties = insert(J, obj, obj->properties, name, &result);

 return result;
}
