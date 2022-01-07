
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int gccounter; TYPE_2__* gcobj; } ;
typedef TYPE_1__ js_State ;
struct TYPE_10__ {int type; int extensible; struct TYPE_10__* prototype; int * properties; struct TYPE_10__* gcnext; scalar_t__ gcmark; } ;
typedef TYPE_2__ js_Object ;
typedef enum js_Class { ____Placeholder_js_Class } js_Class ;


 TYPE_2__* js_malloc (TYPE_1__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int sentinel ;

js_Object *jsV_newobject(js_State *J, enum js_Class type, js_Object *prototype)
{
 js_Object *obj = js_malloc(J, sizeof *obj);
 memset(obj, 0, sizeof *obj);
 obj->gcmark = 0;
 obj->gcnext = J->gcobj;
 J->gcobj = obj;
 ++J->gccounter;

 obj->type = type;
 obj->properties = &sentinel;
 obj->prototype = prototype;
 obj->extensible = 1;
 return obj;
}
