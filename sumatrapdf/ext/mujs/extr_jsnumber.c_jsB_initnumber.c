
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* Number_prototype; } ;
typedef TYPE_2__ js_State ;
struct TYPE_10__ {scalar_t__ number; } ;
struct TYPE_12__ {TYPE_1__ u; } ;


 int INFINITY ;
 int JS_DONTENUM ;
 int NAN ;
 int Np_toExponential ;
 int Np_toFixed ;
 int Np_toPrecision ;
 int Np_toString ;
 int Np_valueOf ;
 int jsB_Number ;
 int jsB_new_Number ;
 int jsB_propf (TYPE_2__*,char*,int ,int) ;
 int jsB_propn (TYPE_2__*,char*,int) ;
 int js_defglobal (TYPE_2__*,char*,int ) ;
 int js_newcconstructor (TYPE_2__*,int ,int ,char*,int ) ;
 int js_pushobject (TYPE_2__*,TYPE_4__*) ;

void jsB_initnumber(js_State *J)
{
 J->Number_prototype->u.number = 0;

 js_pushobject(J, J->Number_prototype);
 {
  jsB_propf(J, "Number.prototype.valueOf", Np_valueOf, 0);
  jsB_propf(J, "Number.prototype.toString", Np_toString, 1);
  jsB_propf(J, "Number.prototype.toLocaleString", Np_toString, 0);
  jsB_propf(J, "Number.prototype.toFixed", Np_toFixed, 1);
  jsB_propf(J, "Number.prototype.toExponential", Np_toExponential, 1);
  jsB_propf(J, "Number.prototype.toPrecision", Np_toPrecision, 1);
 }
 js_newcconstructor(J, jsB_Number, jsB_new_Number, "Number", 0);
 {
  jsB_propn(J, "MAX_VALUE", 1.7976931348623157e+308);
  jsB_propn(J, "MIN_VALUE", 5e-324);
  jsB_propn(J, "NaN", NAN);
  jsB_propn(J, "NEGATIVE_INFINITY", -INFINITY);
  jsB_propn(J, "POSITIVE_INFINITY", INFINITY);
 }
 js_defglobal(J, "Number", JS_DONTENUM);
}
