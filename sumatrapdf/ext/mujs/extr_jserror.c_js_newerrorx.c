
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Object ;


 int JS_CERROR ;
 scalar_t__ jsB_stacktrace (int *,int ) ;
 int jsV_newobject (int *,int ,int *) ;
 int js_pushobject (int *,int ) ;
 int js_pushstring (int *,char const*) ;
 int js_setproperty (int *,int,char*) ;

__attribute__((used)) static void js_newerrorx(js_State *J, const char *message, js_Object *prototype)
{
 js_pushobject(J, jsV_newobject(J, JS_CERROR, prototype));
 js_pushstring(J, message);
 js_setproperty(J, -2, "message");
 if (jsB_stacktrace(J, 0))
  js_setproperty(J, -2, "stackTrace");
}
