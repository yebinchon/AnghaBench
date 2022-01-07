
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {int properties; } ;
typedef TYPE_1__ js_Object ;


 int delete (int *,TYPE_1__*,int ,char const*) ;

void jsV_delproperty(js_State *J, js_Object *obj, const char *name)
{
 obj->properties = delete(J, obj, obj->properties, name);
}
