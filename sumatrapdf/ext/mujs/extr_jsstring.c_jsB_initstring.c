
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* String_prototype; } ;
typedef TYPE_3__ js_State ;
struct TYPE_10__ {char* string; scalar_t__ length; } ;
struct TYPE_11__ {TYPE_1__ s; } ;
struct TYPE_13__ {TYPE_2__ u; } ;


 int JS_DONTENUM ;
 int S_fromCharCode ;
 int Sp_charAt ;
 int Sp_charCodeAt ;
 int Sp_concat ;
 int Sp_indexOf ;
 int Sp_lastIndexOf ;
 int Sp_localeCompare ;
 int Sp_match ;
 int Sp_replace ;
 int Sp_search ;
 int Sp_slice ;
 int Sp_split ;
 int Sp_substring ;
 int Sp_toLowerCase ;
 int Sp_toString ;
 int Sp_toUpperCase ;
 int Sp_trim ;
 int Sp_valueOf ;
 int jsB_String ;
 int jsB_new_String ;
 int jsB_propf (TYPE_3__*,char*,int ,int) ;
 int js_defglobal (TYPE_3__*,char*,int ) ;
 int js_newcconstructor (TYPE_3__*,int ,int ,char*,int ) ;
 int js_pushobject (TYPE_3__*,TYPE_5__*) ;

void jsB_initstring(js_State *J)
{
 J->String_prototype->u.s.string = "";
 J->String_prototype->u.s.length = 0;

 js_pushobject(J, J->String_prototype);
 {
  jsB_propf(J, "String.prototype.toString", Sp_toString, 0);
  jsB_propf(J, "String.prototype.valueOf", Sp_valueOf, 0);
  jsB_propf(J, "String.prototype.charAt", Sp_charAt, 1);
  jsB_propf(J, "String.prototype.charCodeAt", Sp_charCodeAt, 1);
  jsB_propf(J, "String.prototype.concat", Sp_concat, 0);
  jsB_propf(J, "String.prototype.indexOf", Sp_indexOf, 1);
  jsB_propf(J, "String.prototype.lastIndexOf", Sp_lastIndexOf, 1);
  jsB_propf(J, "String.prototype.localeCompare", Sp_localeCompare, 1);
  jsB_propf(J, "String.prototype.match", Sp_match, 1);
  jsB_propf(J, "String.prototype.replace", Sp_replace, 2);
  jsB_propf(J, "String.prototype.search", Sp_search, 1);
  jsB_propf(J, "String.prototype.slice", Sp_slice, 2);
  jsB_propf(J, "String.prototype.split", Sp_split, 2);
  jsB_propf(J, "String.prototype.substring", Sp_substring, 2);
  jsB_propf(J, "String.prototype.toLowerCase", Sp_toLowerCase, 0);
  jsB_propf(J, "String.prototype.toLocaleLowerCase", Sp_toLowerCase, 0);
  jsB_propf(J, "String.prototype.toUpperCase", Sp_toUpperCase, 0);
  jsB_propf(J, "String.prototype.toLocaleUpperCase", Sp_toUpperCase, 0);


  jsB_propf(J, "String.prototype.trim", Sp_trim, 0);
 }
 js_newcconstructor(J, jsB_String, jsB_new_String, "String", 0);
 {
  jsB_propf(J, "String.fromCharCode", S_fromCharCode, 0);
 }
 js_defglobal(J, "String", JS_DONTENUM);
}
