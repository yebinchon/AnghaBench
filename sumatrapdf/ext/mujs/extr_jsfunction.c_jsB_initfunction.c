
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* Function_prototype; } ;
typedef TYPE_3__ js_State ;
struct TYPE_11__ {char* name; scalar_t__ length; int * constructor; int function; } ;
struct TYPE_10__ {TYPE_2__ c; } ;
struct TYPE_13__ {TYPE_1__ u; } ;


 int Fp_apply ;
 int Fp_bind ;
 int Fp_call ;
 int Fp_toString ;
 int JS_DONTENUM ;
 int jsB_Function ;
 int jsB_Function_prototype ;
 int jsB_propf (TYPE_3__*,char*,int ,int) ;
 int js_defglobal (TYPE_3__*,char*,int ) ;
 int js_newcconstructor (TYPE_3__*,int ,int ,char*,int) ;
 int js_pushobject (TYPE_3__*,TYPE_5__*) ;

void jsB_initfunction(js_State *J)
{
 J->Function_prototype->u.c.name = "Function.prototype";
 J->Function_prototype->u.c.function = jsB_Function_prototype;
 J->Function_prototype->u.c.constructor = ((void*)0);
 J->Function_prototype->u.c.length = 0;

 js_pushobject(J, J->Function_prototype);
 {
  jsB_propf(J, "Function.prototype.toString", Fp_toString, 2);
  jsB_propf(J, "Function.prototype.apply", Fp_apply, 2);
  jsB_propf(J, "Function.prototype.call", Fp_call, 1);
  jsB_propf(J, "Function.prototype.bind", Fp_bind, 1);
 }
 js_newcconstructor(J, jsB_Function, jsB_Function, "Function", 1);
 js_defglobal(J, "Function", JS_DONTENUM);
}
