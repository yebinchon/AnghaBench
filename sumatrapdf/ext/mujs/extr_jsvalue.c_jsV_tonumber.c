
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {double boolean; double number; TYPE_1__* memstr; int litstr; int shrstr; } ;
struct TYPE_8__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ js_Value ;
typedef int js_State ;
struct TYPE_6__ {int p; } ;


 int JS_HNUMBER ;
 double NAN ;
 double jsV_stringtonumber (int *,int ) ;
 int jsV_toprimitive (int *,TYPE_3__*,int ) ;

double jsV_tonumber(js_State *J, js_Value *v)
{
 switch (v->type) {
 default:
 case 129: return jsV_stringtonumber(J, v->u.shrstr);
 case 128: return NAN;
 case 132: return 0;
 case 135: return v->u.boolean;
 case 131: return v->u.number;
 case 134: return jsV_stringtonumber(J, v->u.litstr);
 case 133: return jsV_stringtonumber(J, v->u.memstr->p);
 case 130:
  jsV_toprimitive(J, v, JS_HNUMBER);
  return jsV_tonumber(J, v);
 }
}
