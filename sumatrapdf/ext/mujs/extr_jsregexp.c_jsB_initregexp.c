
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int RegExp_prototype; } ;
typedef TYPE_1__ js_State ;


 int JS_DONTENUM ;
 int Rp_exec ;
 int Rp_test ;
 int Rp_toString ;
 int jsB_RegExp ;
 int jsB_new_RegExp ;
 int jsB_propf (TYPE_1__*,char*,int ,int ) ;
 int js_defglobal (TYPE_1__*,char*,int ) ;
 int js_newcconstructor (TYPE_1__*,int ,int ,char*,int) ;
 int js_pushobject (TYPE_1__*,int ) ;

void jsB_initregexp(js_State *J)
{
 js_pushobject(J, J->RegExp_prototype);
 {
  jsB_propf(J, "RegExp.prototype.toString", Rp_toString, 0);
  jsB_propf(J, "RegExp.prototype.test", Rp_test, 0);
  jsB_propf(J, "RegExp.prototype.exec", Rp_exec, 0);
 }
 js_newcconstructor(J, jsB_RegExp, jsB_new_RegExp, "RegExp", 1);
 js_defglobal(J, "RegExp", JS_DONTENUM);
}
