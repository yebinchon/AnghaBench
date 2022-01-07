
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_6__ {int atts; } ;
typedef TYPE_1__ js_Property ;
struct TYPE_7__ {struct TYPE_7__* prototype; int properties; } ;
typedef TYPE_2__ js_Object ;


 int JS_DONTENUM ;
 TYPE_1__* lookup (int ,char const*) ;

__attribute__((used)) static js_Property *jsV_getenumproperty(js_State *J, js_Object *obj, const char *name)
{
 do {
  js_Property *ref = lookup(obj->properties, name);
  if (ref && !(ref->atts & JS_DONTENUM))
   return ref;
  obj = obj->prototype;
 } while (obj);
 return ((void*)0);
}
