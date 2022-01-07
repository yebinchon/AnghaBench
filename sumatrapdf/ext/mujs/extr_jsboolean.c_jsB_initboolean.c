
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* Boolean_prototype; } ;
typedef TYPE_2__ js_State ;
struct TYPE_9__ {scalar_t__ boolean; } ;
struct TYPE_11__ {TYPE_1__ u; } ;


 int Bp_toString ;
 int Bp_valueOf ;
 int JS_DONTENUM ;
 int jsB_Boolean ;
 int jsB_new_Boolean ;
 int jsB_propf (TYPE_2__*,char*,int ,int ) ;
 int js_defglobal (TYPE_2__*,char*,int ) ;
 int js_newcconstructor (TYPE_2__*,int ,int ,char*,int) ;
 int js_pushobject (TYPE_2__*,TYPE_4__*) ;

void jsB_initboolean(js_State *J)
{
 J->Boolean_prototype->u.boolean = 0;

 js_pushobject(J, J->Boolean_prototype);
 {
  jsB_propf(J, "Boolean.prototype.toString", Bp_toString, 0);
  jsB_propf(J, "Boolean.prototype.valueOf", Bp_valueOf, 0);
 }
 js_newcconstructor(J, jsB_Boolean, jsB_new_Boolean, "Boolean", 1);
 js_defglobal(J, "Boolean", JS_DONTENUM);
}
