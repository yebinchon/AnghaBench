
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
typedef int js_Property ;
struct TYPE_3__ {int properties; } ;
typedef TYPE_1__ js_Object ;


 int * lookup (int ,char const*) ;

js_Property *jsV_getownproperty(js_State *J, js_Object *obj, const char *name)
{
 return lookup(obj->properties, name);
}
