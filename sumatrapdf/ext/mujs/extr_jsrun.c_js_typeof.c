
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* object; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ js_Value ;
typedef int js_State ;
struct TYPE_5__ {int type; } ;


 int JS_CCFUNCTION ;
 int JS_CFUNCTION ;
 TYPE_3__* stackidx (int *,int) ;

const char *js_typeof(js_State *J, int idx)
{
 js_Value *v = stackidx(J, idx);
 switch (v->type) {
 default:
 case 129: return "string";
 case 128: return "undefined";
 case 132: return "object";
 case 135: return "boolean";
 case 131: return "number";
 case 134: return "string";
 case 133: return "string";
 case 130:
  if (v->u.object->type == JS_CFUNCTION || v->u.object->type == JS_CCFUNCTION)
   return "function";
  return "object";
 }
}
