
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int boolean; TYPE_1__* memstr; int * litstr; int number; int * shrstr; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ js_Value ;
typedef int js_State ;
struct TYPE_5__ {int * p; } ;
 int isnan (int ) ;

int jsV_toboolean(js_State *J, js_Value *v)
{
 switch (v->type) {
 default:
 case 129: return v->u.shrstr[0] != 0;
 case 128: return 0;
 case 132: return 0;
 case 135: return v->u.boolean;
 case 131: return v->u.number != 0 && !isnan(v->u.number);
 case 134: return v->u.litstr[0] != 0;
 case 133: return v->u.memstr->p[0] != 0;
 case 130: return 1;
 }
}
