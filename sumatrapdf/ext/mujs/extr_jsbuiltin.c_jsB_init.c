
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int * Error_prototype; void* URIError_prototype; void* TypeError_prototype; void* SyntaxError_prototype; void* ReferenceError_prototype; void* RangeError_prototype; void* EvalError_prototype; int * Object_prototype; void* Date_prototype; void* RegExp_prototype; void* String_prototype; void* Number_prototype; void* Boolean_prototype; void* Function_prototype; void* Array_prototype; } ;
typedef TYPE_1__ js_State ;


 int INFINITY ;
 int JS_CARRAY ;
 int JS_CBOOLEAN ;
 int JS_CCFUNCTION ;
 int JS_CDATE ;
 int JS_CERROR ;
 int JS_CNUMBER ;
 int JS_COBJECT ;
 int JS_CSTRING ;
 int JS_DONTCONF ;
 int JS_DONTENUM ;
 int JS_READONLY ;
 int NAN ;
 int jsB_decodeURI ;
 int jsB_decodeURIComponent ;
 int jsB_encodeURI ;
 int jsB_encodeURIComponent ;
 int jsB_globalf (TYPE_1__*,char*,int ,int) ;
 int jsB_initarray (TYPE_1__*) ;
 int jsB_initboolean (TYPE_1__*) ;
 int jsB_initdate (TYPE_1__*) ;
 int jsB_initerror (TYPE_1__*) ;
 int jsB_initfunction (TYPE_1__*) ;
 int jsB_initjson (TYPE_1__*) ;
 int jsB_initmath (TYPE_1__*) ;
 int jsB_initnumber (TYPE_1__*) ;
 int jsB_initobject (TYPE_1__*) ;
 int jsB_initregexp (TYPE_1__*) ;
 int jsB_initstring (TYPE_1__*) ;
 int jsB_isFinite ;
 int jsB_isNaN ;
 int jsB_parseFloat ;
 int jsB_parseInt ;
 void* jsV_newobject (TYPE_1__*,int ,int *) ;
 int js_defglobal (TYPE_1__*,char*,int) ;
 int js_pushnumber (TYPE_1__*,int ) ;
 int js_pushundefined (TYPE_1__*) ;

void jsB_init(js_State *J)
{

 J->Object_prototype = jsV_newobject(J, JS_COBJECT, ((void*)0));
 J->Array_prototype = jsV_newobject(J, JS_CARRAY, J->Object_prototype);
 J->Function_prototype = jsV_newobject(J, JS_CCFUNCTION, J->Object_prototype);
 J->Boolean_prototype = jsV_newobject(J, JS_CBOOLEAN, J->Object_prototype);
 J->Number_prototype = jsV_newobject(J, JS_CNUMBER, J->Object_prototype);
 J->String_prototype = jsV_newobject(J, JS_CSTRING, J->Object_prototype);
 J->RegExp_prototype = jsV_newobject(J, JS_COBJECT, J->Object_prototype);
 J->Date_prototype = jsV_newobject(J, JS_CDATE, J->Object_prototype);


 J->Error_prototype = jsV_newobject(J, JS_CERROR, J->Object_prototype);
 J->EvalError_prototype = jsV_newobject(J, JS_CERROR, J->Error_prototype);
 J->RangeError_prototype = jsV_newobject(J, JS_CERROR, J->Error_prototype);
 J->ReferenceError_prototype = jsV_newobject(J, JS_CERROR, J->Error_prototype);
 J->SyntaxError_prototype = jsV_newobject(J, JS_CERROR, J->Error_prototype);
 J->TypeError_prototype = jsV_newobject(J, JS_CERROR, J->Error_prototype);
 J->URIError_prototype = jsV_newobject(J, JS_CERROR, J->Error_prototype);


 jsB_initobject(J);
 jsB_initarray(J);
 jsB_initfunction(J);
 jsB_initboolean(J);
 jsB_initnumber(J);
 jsB_initstring(J);
 jsB_initregexp(J);
 jsB_initdate(J);
 jsB_initerror(J);
 jsB_initmath(J);
 jsB_initjson(J);


 js_pushnumber(J, NAN);
 js_defglobal(J, "NaN", JS_READONLY | JS_DONTENUM | JS_DONTCONF);

 js_pushnumber(J, INFINITY);
 js_defglobal(J, "Infinity", JS_READONLY | JS_DONTENUM | JS_DONTCONF);

 js_pushundefined(J);
 js_defglobal(J, "undefined", JS_READONLY | JS_DONTENUM | JS_DONTCONF);

 jsB_globalf(J, "parseInt", jsB_parseInt, 1);
 jsB_globalf(J, "parseFloat", jsB_parseFloat, 1);
 jsB_globalf(J, "isNaN", jsB_isNaN, 1);
 jsB_globalf(J, "isFinite", jsB_isFinite, 1);

 jsB_globalf(J, "decodeURI", jsB_decodeURI, 1);
 jsB_globalf(J, "decodeURIComponent", jsB_decodeURIComponent, 1);
 jsB_globalf(J, "encodeURI", jsB_encodeURI, 1);
 jsB_globalf(J, "encodeURIComponent", jsB_encodeURIComponent, 1);
}
