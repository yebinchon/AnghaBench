
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int js_State ;
typedef int js_Put ;
struct TYPE_8__ {char const* tag; int finalize; int delete; int put; int has; void* data; } ;
struct TYPE_9__ {TYPE_1__ user; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
typedef TYPE_3__ js_Object ;
typedef int js_HasProperty ;
typedef int js_Finalize ;
typedef int js_Delete ;


 int JS_CUSERDATA ;
 TYPE_3__* jsV_newobject (int *,int ,TYPE_3__*) ;
 scalar_t__ js_isobject (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushobject (int *,TYPE_3__*) ;
 TYPE_3__* js_toobject (int *,int) ;

void js_newuserdatax(js_State *J, const char *tag, void *data, js_HasProperty has, js_Put put, js_Delete delete, js_Finalize finalize)
{
 js_Object *prototype = ((void*)0);
 js_Object *obj;

 if (js_isobject(J, -1))
  prototype = js_toobject(J, -1);
 js_pop(J, 1);

 obj = jsV_newobject(J, JS_CUSERDATA, prototype);
 obj->u.user.tag = tag;
 obj->u.user.data = data;
 obj->u.user.has = has;
 obj->u.user.put = put;
 obj->u.user.delete = delete;
 obj->u.user.finalize = finalize;
 js_pushobject(J, obj);
}
