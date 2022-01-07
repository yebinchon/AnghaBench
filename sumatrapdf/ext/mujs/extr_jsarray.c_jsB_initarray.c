
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Array_prototype; } ;
typedef TYPE_1__ js_State ;


 int A_isArray ;
 int Ap_concat ;
 int Ap_every ;
 int Ap_filter ;
 int Ap_forEach ;
 int Ap_indexOf ;
 int Ap_join ;
 int Ap_lastIndexOf ;
 int Ap_map ;
 int Ap_pop ;
 int Ap_push ;
 int Ap_reduce ;
 int Ap_reduceRight ;
 int Ap_reverse ;
 int Ap_shift ;
 int Ap_slice ;
 int Ap_some ;
 int Ap_sort ;
 int Ap_splice ;
 int Ap_toString ;
 int Ap_unshift ;
 int JS_DONTENUM ;
 int jsB_new_Array ;
 int jsB_propf (TYPE_1__*,char*,int ,int) ;
 int js_defglobal (TYPE_1__*,char*,int ) ;
 int js_newcconstructor (TYPE_1__*,int ,int ,char*,int ) ;
 int js_pushobject (TYPE_1__*,int ) ;

void jsB_initarray(js_State *J)
{
 js_pushobject(J, J->Array_prototype);
 {
  jsB_propf(J, "Array.prototype.toString", Ap_toString, 0);
  jsB_propf(J, "Array.prototype.concat", Ap_concat, 0);
  jsB_propf(J, "Array.prototype.join", Ap_join, 1);
  jsB_propf(J, "Array.prototype.pop", Ap_pop, 0);
  jsB_propf(J, "Array.prototype.push", Ap_push, 0);
  jsB_propf(J, "Array.prototype.reverse", Ap_reverse, 0);
  jsB_propf(J, "Array.prototype.shift", Ap_shift, 0);
  jsB_propf(J, "Array.prototype.slice", Ap_slice, 2);
  jsB_propf(J, "Array.prototype.sort", Ap_sort, 1);
  jsB_propf(J, "Array.prototype.splice", Ap_splice, 0);
  jsB_propf(J, "Array.prototype.unshift", Ap_unshift, 0);


  jsB_propf(J, "Array.prototype.indexOf", Ap_indexOf, 1);
  jsB_propf(J, "Array.prototype.lastIndexOf", Ap_lastIndexOf, 1);
  jsB_propf(J, "Array.prototype.every", Ap_every, 1);
  jsB_propf(J, "Array.prototype.some", Ap_some, 1);
  jsB_propf(J, "Array.prototype.forEach", Ap_forEach, 1);
  jsB_propf(J, "Array.prototype.map", Ap_map, 1);
  jsB_propf(J, "Array.prototype.filter", Ap_filter, 1);
  jsB_propf(J, "Array.prototype.reduce", Ap_reduce, 1);
  jsB_propf(J, "Array.prototype.reduceRight", Ap_reduceRight, 1);
 }
 js_newcconstructor(J, jsB_new_Array, jsB_new_Array, "Array", 0);
 {

  jsB_propf(J, "Array.isArray", A_isArray, 1);
 }
 js_defglobal(J, "Array", JS_DONTENUM);
}
