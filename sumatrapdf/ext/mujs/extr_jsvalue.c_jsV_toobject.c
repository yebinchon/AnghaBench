
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * object; TYPE_1__* memstr; int litstr; int number; int boolean; int shrstr; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ js_Value ;
typedef int js_State ;
typedef int js_Object ;
struct TYPE_5__ {int p; } ;
 int * jsV_newboolean (int *,int ) ;
 int * jsV_newnumber (int *,int ) ;
 int * jsV_newstring (int *,int ) ;
 int js_typeerror (int *,char*) ;

js_Object *jsV_toobject(js_State *J, js_Value *v)
{
 switch (v->type) {
 default:
 case 129: return jsV_newstring(J, v->u.shrstr);
 case 128: js_typeerror(J, "cannot convert undefined to object");
 case 132: js_typeerror(J, "cannot convert null to object");
 case 135: return jsV_newboolean(J, v->u.boolean);
 case 131: return jsV_newnumber(J, v->u.number);
 case 134: return jsV_newstring(J, v->u.litstr);
 case 133: return jsV_newstring(J, v->u.memstr->p);
 case 130: return v->u.object;
 }
}
