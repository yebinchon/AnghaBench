
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Object_prototype; int seed; } ;
typedef TYPE_1__ js_State ;


 int JS_CMATH ;
 int JS_DONTENUM ;
 int Math_abs ;
 int Math_acos ;
 int Math_asin ;
 int Math_atan ;
 int Math_atan2 ;
 int Math_ceil ;
 int Math_cos ;
 int Math_exp ;
 int Math_floor ;
 int Math_log ;
 int Math_max ;
 int Math_min ;
 int Math_pow ;
 int Math_random ;
 int Math_round ;
 int Math_sin ;
 int Math_sqrt ;
 int Math_tan ;
 int jsB_propf (TYPE_1__*,char*,int ,int) ;
 int jsB_propn (TYPE_1__*,char*,double) ;
 int jsV_newobject (TYPE_1__*,int ,int ) ;
 int js_defglobal (TYPE_1__*,char*,int ) ;
 int js_pushobject (TYPE_1__*,int ) ;
 int time (int *) ;

void jsB_initmath(js_State *J)
{
 J->seed = time(((void*)0));

 js_pushobject(J, jsV_newobject(J, JS_CMATH, J->Object_prototype));
 {
  jsB_propn(J, "E", 2.7182818284590452354);
  jsB_propn(J, "LN10", 2.302585092994046);
  jsB_propn(J, "LN2", 0.6931471805599453);
  jsB_propn(J, "LOG2E", 1.4426950408889634);
  jsB_propn(J, "LOG10E", 0.4342944819032518);
  jsB_propn(J, "PI", 3.1415926535897932);
  jsB_propn(J, "SQRT1_2", 0.7071067811865476);
  jsB_propn(J, "SQRT2", 1.4142135623730951);

  jsB_propf(J, "Math.abs", Math_abs, 1);
  jsB_propf(J, "Math.acos", Math_acos, 1);
  jsB_propf(J, "Math.asin", Math_asin, 1);
  jsB_propf(J, "Math.atan", Math_atan, 1);
  jsB_propf(J, "Math.atan2", Math_atan2, 2);
  jsB_propf(J, "Math.ceil", Math_ceil, 1);
  jsB_propf(J, "Math.cos", Math_cos, 1);
  jsB_propf(J, "Math.exp", Math_exp, 1);
  jsB_propf(J, "Math.floor", Math_floor, 1);
  jsB_propf(J, "Math.log", Math_log, 1);
  jsB_propf(J, "Math.max", Math_max, 0);
  jsB_propf(J, "Math.min", Math_min, 0);
  jsB_propf(J, "Math.pow", Math_pow, 2);
  jsB_propf(J, "Math.random", Math_random, 0);
  jsB_propf(J, "Math.round", Math_round, 1);
  jsB_propf(J, "Math.sin", Math_sin, 1);
  jsB_propf(J, "Math.sqrt", Math_sqrt, 1);
  jsB_propf(J, "Math.tan", Math_tan, 1);
 }
 js_defglobal(J, "Math", JS_DONTENUM);
}
