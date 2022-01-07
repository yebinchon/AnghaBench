
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int js_Value ;
struct TYPE_36__ {scalar_t__ strict; } ;
typedef TYPE_6__ js_State ;
struct TYPE_37__ {int atts; int value; scalar_t__ getter; TYPE_8__* setter; } ;
typedef TYPE_7__ js_Property ;
struct TYPE_34__ {int data; scalar_t__ (* put ) (TYPE_6__*,int ,char const*) ;} ;
struct TYPE_33__ {int last; } ;
struct TYPE_32__ {int length; } ;
struct TYPE_31__ {int length; } ;
struct TYPE_35__ {TYPE_4__ user; TYPE_3__ r; TYPE_2__ s; TYPE_1__ a; } ;
struct TYPE_38__ {scalar_t__ type; TYPE_5__ u; } ;
typedef TYPE_8__ js_Object ;


 scalar_t__ JS_CARRAY ;
 scalar_t__ JS_CREGEXP ;
 scalar_t__ JS_CSTRING ;
 scalar_t__ JS_CUSERDATA ;
 int JS_READONLY ;
 TYPE_7__* jsV_getpropertyx (TYPE_6__*,TYPE_8__*,char const*,int*) ;
 int jsV_numbertointeger (double) ;
 int jsV_resizearray (TYPE_6__*,TYPE_8__*,int) ;
 TYPE_7__* jsV_setproperty (TYPE_6__*,TYPE_8__*,char const*) ;
 int jsV_tointeger (TYPE_6__*,int *) ;
 double jsV_tonumber (TYPE_6__*,int *) ;
 int js_call (TYPE_6__*,int) ;
 scalar_t__ js_isarrayindex (TYPE_6__*,char const*,int*) ;
 int js_pop (TYPE_6__*,int) ;
 int js_pushobject (TYPE_6__*,TYPE_8__*) ;
 int js_pushvalue (TYPE_6__*,int ) ;
 int js_rangeerror (TYPE_6__*,char*) ;
 int js_typeerror (TYPE_6__*,char*,char const*) ;
 int * stackidx (TYPE_6__*,int) ;
 int strcmp (char const*,char*) ;
 scalar_t__ stub1 (TYPE_6__*,int ,char const*) ;

__attribute__((used)) static void jsR_setproperty(js_State *J, js_Object *obj, const char *name)
{
 js_Value *value = stackidx(J, -1);
 js_Property *ref;
 int k;
 int own;

 if (obj->type == JS_CARRAY) {
  if (!strcmp(name, "length")) {
   double rawlen = jsV_tonumber(J, value);
   int newlen = jsV_numbertointeger(rawlen);
   if (newlen != rawlen || newlen < 0)
    js_rangeerror(J, "invalid array length");
   jsV_resizearray(J, obj, newlen);
   return;
  }
  if (js_isarrayindex(J, name, &k))
   if (k >= obj->u.a.length)
    obj->u.a.length = k + 1;
 }

 else if (obj->type == JS_CSTRING) {
  if (!strcmp(name, "length"))
   goto readonly;
  if (js_isarrayindex(J, name, &k))
   if (k >= 0 && k < obj->u.s.length)
    goto readonly;
 }

 else if (obj->type == JS_CREGEXP) {
  if (!strcmp(name, "source")) goto readonly;
  if (!strcmp(name, "global")) goto readonly;
  if (!strcmp(name, "ignoreCase")) goto readonly;
  if (!strcmp(name, "multiline")) goto readonly;
  if (!strcmp(name, "lastIndex")) {
   obj->u.r.last = jsV_tointeger(J, value);
   return;
  }
 }

 else if (obj->type == JS_CUSERDATA) {
  if (obj->u.user.put && obj->u.user.put(J, obj->u.user.data, name))
   return;
 }


 ref = jsV_getpropertyx(J, obj, name, &own);
 if (ref) {
  if (ref->setter) {
   js_pushobject(J, ref->setter);
   js_pushobject(J, obj);
   js_pushvalue(J, *value);
   js_call(J, 1);
   js_pop(J, 1);
   return;
  } else {
   if (J->strict)
    if (ref->getter)
     js_typeerror(J, "setting property '%s' that only has a getter", name);
  }
 }


 if (!ref || !own)
  ref = jsV_setproperty(J, obj, name);

 if (ref) {
  if (!(ref->atts & JS_READONLY))
   ref->value = *value;
  else
   goto readonly;
 }

 return;

readonly:
 if (J->strict)
  js_typeerror(J, "'%s' is read-only", name);
}
