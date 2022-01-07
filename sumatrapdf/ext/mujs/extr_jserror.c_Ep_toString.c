
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_concat (int *) ;
 scalar_t__ js_hasproperty (int *,int ,char*) ;
 int js_isobject (int *,int) ;
 int js_pushstring (int *,char const*) ;
 char* js_tostring (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void Ep_toString(js_State *J)
{
 const char *name = "Error";
 const char *message = "";

 if (!js_isobject(J, -1))
  js_typeerror(J, "not an object");

 if (js_hasproperty(J, 0, "name"))
  name = js_tostring(J, -1);
 if (js_hasproperty(J, 0, "message"))
  message = js_tostring(J, -1);

 if (name[0] == 0)
  js_pushstring(J, message);
 else if (message[0] == 0)
  js_pushstring(J, name);
 else {
  js_pushstring(J, name);
  js_pushstring(J, ": ");
  js_concat(J);
  js_pushstring(J, message);
  js_concat(J);
 }
}
