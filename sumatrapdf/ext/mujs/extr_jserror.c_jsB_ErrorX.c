
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Object ;


 int JS_CERROR ;
 scalar_t__ jsB_stacktrace (int *,int) ;
 int jsV_newobject (int *,int ,int *) ;
 int js_gettop (int *) ;
 int js_pushobject (int *,int ) ;
 int js_pushstring (int *,int ) ;
 int js_setproperty (int *,int,char*) ;
 int js_tostring (int *,int) ;

__attribute__((used)) static int jsB_ErrorX(js_State *J, js_Object *prototype)
{
 int top = js_gettop(J);
 js_pushobject(J, jsV_newobject(J, JS_CERROR, prototype));
 if (top > 1) {
  js_pushstring(J, js_tostring(J, 1));
  js_setproperty(J, -2, "message");
 }
 if (jsB_stacktrace(J, 1))
  js_setproperty(J, -2, "stackTrace");
 return 1;
}
