
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Property ;
typedef int js_Object ;


 int * jsV_getownproperty (int *,int *,char const*) ;
 int js_pushboolean (int *,int ) ;
 int * js_toobject (int *,int ) ;
 char* js_tostring (int *,int) ;

__attribute__((used)) static void Op_hasOwnProperty(js_State *J)
{
 js_Object *self = js_toobject(J, 0);
 const char *name = js_tostring(J, 1);
 js_Property *ref = jsV_getownproperty(J, self, name);
 js_pushboolean(J, ref != ((void*)0));
}
