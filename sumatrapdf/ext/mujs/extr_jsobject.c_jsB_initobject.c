
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Object_prototype; } ;
typedef TYPE_1__ js_State ;


 int JS_DONTENUM ;
 int O_create ;
 int O_defineProperties ;
 int O_defineProperty ;
 int O_freeze ;
 int O_getOwnPropertyDescriptor ;
 int O_getOwnPropertyNames ;
 int O_getPrototypeOf ;
 int O_isExtensible ;
 int O_isFrozen ;
 int O_isSealed ;
 int O_keys ;
 int O_preventExtensions ;
 int O_seal ;
 int Op_hasOwnProperty ;
 int Op_isPrototypeOf ;
 int Op_propertyIsEnumerable ;
 int Op_toString ;
 int Op_valueOf ;
 int jsB_Object ;
 int jsB_new_Object ;
 int jsB_propf (TYPE_1__*,char*,int ,int) ;
 int js_defglobal (TYPE_1__*,char*,int ) ;
 int js_newcconstructor (TYPE_1__*,int ,int ,char*,int) ;
 int js_pushobject (TYPE_1__*,int ) ;

void jsB_initobject(js_State *J)
{
 js_pushobject(J, J->Object_prototype);
 {
  jsB_propf(J, "Object.prototype.toString", Op_toString, 0);
  jsB_propf(J, "Object.prototype.toLocaleString", Op_toString, 0);
  jsB_propf(J, "Object.prototype.valueOf", Op_valueOf, 0);
  jsB_propf(J, "Object.prototype.hasOwnProperty", Op_hasOwnProperty, 1);
  jsB_propf(J, "Object.prototype.isPrototypeOf", Op_isPrototypeOf, 1);
  jsB_propf(J, "Object.prototype.propertyIsEnumerable", Op_propertyIsEnumerable, 1);
 }
 js_newcconstructor(J, jsB_Object, jsB_new_Object, "Object", 1);
 {

  jsB_propf(J, "Object.getPrototypeOf", O_getPrototypeOf, 1);
  jsB_propf(J, "Object.getOwnPropertyDescriptor", O_getOwnPropertyDescriptor, 2);
  jsB_propf(J, "Object.getOwnPropertyNames", O_getOwnPropertyNames, 1);
  jsB_propf(J, "Object.create", O_create, 2);
  jsB_propf(J, "Object.defineProperty", O_defineProperty, 3);
  jsB_propf(J, "Object.defineProperties", O_defineProperties, 2);
  jsB_propf(J, "Object.seal", O_seal, 1);
  jsB_propf(J, "Object.freeze", O_freeze, 1);
  jsB_propf(J, "Object.preventExtensions", O_preventExtensions, 1);
  jsB_propf(J, "Object.isSealed", O_isSealed, 1);
  jsB_propf(J, "Object.isFrozen", O_isFrozen, 1);
  jsB_propf(J, "Object.isExtensible", O_isExtensible, 1);
  jsB_propf(J, "Object.keys", O_keys, 1);
 }
 js_defglobal(J, "Object", JS_DONTENUM);
}
