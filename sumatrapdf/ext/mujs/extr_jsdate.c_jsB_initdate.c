
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* Date_prototype; } ;
typedef TYPE_2__ js_State ;
struct TYPE_9__ {scalar_t__ number; } ;
struct TYPE_11__ {TYPE_1__ u; } ;


 int D_UTC ;
 int D_now ;
 int D_parse ;
 int Dp_getDate ;
 int Dp_getDay ;
 int Dp_getFullYear ;
 int Dp_getHours ;
 int Dp_getMilliseconds ;
 int Dp_getMinutes ;
 int Dp_getMonth ;
 int Dp_getSeconds ;
 int Dp_getTimezoneOffset ;
 int Dp_getUTCDate ;
 int Dp_getUTCDay ;
 int Dp_getUTCFullYear ;
 int Dp_getUTCHours ;
 int Dp_getUTCMilliseconds ;
 int Dp_getUTCMinutes ;
 int Dp_getUTCMonth ;
 int Dp_getUTCSeconds ;
 int Dp_setDate ;
 int Dp_setFullYear ;
 int Dp_setHours ;
 int Dp_setMilliseconds ;
 int Dp_setMinutes ;
 int Dp_setMonth ;
 int Dp_setSeconds ;
 int Dp_setTime ;
 int Dp_setUTCDate ;
 int Dp_setUTCFullYear ;
 int Dp_setUTCHours ;
 int Dp_setUTCMilliseconds ;
 int Dp_setUTCMinutes ;
 int Dp_setUTCMonth ;
 int Dp_setUTCSeconds ;
 int Dp_toDateString ;
 int Dp_toISOString ;
 int Dp_toJSON ;
 int Dp_toString ;
 int Dp_toTimeString ;
 int Dp_toUTCString ;
 int Dp_valueOf ;
 int JS_DONTENUM ;
 int jsB_Date ;
 int jsB_new_Date ;
 int jsB_propf (TYPE_2__*,char*,int ,int) ;
 int js_defglobal (TYPE_2__*,char*,int ) ;
 int js_newcconstructor (TYPE_2__*,int ,int ,char*,int ) ;
 int js_pushobject (TYPE_2__*,TYPE_4__*) ;

void jsB_initdate(js_State *J)
{
 J->Date_prototype->u.number = 0;

 js_pushobject(J, J->Date_prototype);
 {
  jsB_propf(J, "Date.prototype.valueOf", Dp_valueOf, 0);
  jsB_propf(J, "Date.prototype.toString", Dp_toString, 0);
  jsB_propf(J, "Date.prototype.toDateString", Dp_toDateString, 0);
  jsB_propf(J, "Date.prototype.toTimeString", Dp_toTimeString, 0);
  jsB_propf(J, "Date.prototype.toLocaleString", Dp_toString, 0);
  jsB_propf(J, "Date.prototype.toLocaleDateString", Dp_toDateString, 0);
  jsB_propf(J, "Date.prototype.toLocaleTimeString", Dp_toTimeString, 0);
  jsB_propf(J, "Date.prototype.toUTCString", Dp_toUTCString, 0);

  jsB_propf(J, "Date.prototype.getTime", Dp_valueOf, 0);
  jsB_propf(J, "Date.prototype.getFullYear", Dp_getFullYear, 0);
  jsB_propf(J, "Date.prototype.getUTCFullYear", Dp_getUTCFullYear, 0);
  jsB_propf(J, "Date.prototype.getMonth", Dp_getMonth, 0);
  jsB_propf(J, "Date.prototype.getUTCMonth", Dp_getUTCMonth, 0);
  jsB_propf(J, "Date.prototype.getDate", Dp_getDate, 0);
  jsB_propf(J, "Date.prototype.getUTCDate", Dp_getUTCDate, 0);
  jsB_propf(J, "Date.prototype.getDay", Dp_getDay, 0);
  jsB_propf(J, "Date.prototype.getUTCDay", Dp_getUTCDay, 0);
  jsB_propf(J, "Date.prototype.getHours", Dp_getHours, 0);
  jsB_propf(J, "Date.prototype.getUTCHours", Dp_getUTCHours, 0);
  jsB_propf(J, "Date.prototype.getMinutes", Dp_getMinutes, 0);
  jsB_propf(J, "Date.prototype.getUTCMinutes", Dp_getUTCMinutes, 0);
  jsB_propf(J, "Date.prototype.getSeconds", Dp_getSeconds, 0);
  jsB_propf(J, "Date.prototype.getUTCSeconds", Dp_getUTCSeconds, 0);
  jsB_propf(J, "Date.prototype.getMilliseconds", Dp_getMilliseconds, 0);
  jsB_propf(J, "Date.prototype.getUTCMilliseconds", Dp_getUTCMilliseconds, 0);
  jsB_propf(J, "Date.prototype.getTimezoneOffset", Dp_getTimezoneOffset, 0);

  jsB_propf(J, "Date.prototype.setTime", Dp_setTime, 1);
  jsB_propf(J, "Date.prototype.setMilliseconds", Dp_setMilliseconds, 1);
  jsB_propf(J, "Date.prototype.setUTCMilliseconds", Dp_setUTCMilliseconds, 1);
  jsB_propf(J, "Date.prototype.setSeconds", Dp_setSeconds, 2);
  jsB_propf(J, "Date.prototype.setUTCSeconds", Dp_setUTCSeconds, 2);
  jsB_propf(J, "Date.prototype.setMinutes", Dp_setMinutes, 3);
  jsB_propf(J, "Date.prototype.setUTCMinutes", Dp_setUTCMinutes, 3);
  jsB_propf(J, "Date.prototype.setHours", Dp_setHours, 4);
  jsB_propf(J, "Date.prototype.setUTCHours", Dp_setUTCHours, 4);
  jsB_propf(J, "Date.prototype.setDate", Dp_setDate, 1);
  jsB_propf(J, "Date.prototype.setUTCDate", Dp_setUTCDate, 1);
  jsB_propf(J, "Date.prototype.setMonth", Dp_setMonth, 2);
  jsB_propf(J, "Date.prototype.setUTCMonth", Dp_setUTCMonth, 2);
  jsB_propf(J, "Date.prototype.setFullYear", Dp_setFullYear, 3);
  jsB_propf(J, "Date.prototype.setUTCFullYear", Dp_setUTCFullYear, 3);


  jsB_propf(J, "Date.prototype.toISOString", Dp_toISOString, 0);
  jsB_propf(J, "Date.prototype.toJSON", Dp_toJSON, 1);
 }
 js_newcconstructor(J, jsB_Date, jsB_new_Date, "Date", 0);
 {
  jsB_propf(J, "Date.parse", D_parse, 1);
  jsB_propf(J, "Date.UTC", D_UTC, 7);


  jsB_propf(J, "Date.now", D_now, 0);
 }
 js_defglobal(J, "Date", JS_DONTENUM);
}
