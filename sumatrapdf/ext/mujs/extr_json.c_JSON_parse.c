
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsY_initlex (int *,char*,char const*) ;
 int js_defproperty (int *,int,char*,int ) ;
 scalar_t__ js_iscallable (int *,int) ;
 int js_newobject (int *) ;
 char* js_tostring (int *,int) ;
 int jsonnext (int *) ;
 int jsonrevive (int *,char*) ;
 int jsonvalue (int *) ;

__attribute__((used)) static void JSON_parse(js_State *J)
{
 const char *source = js_tostring(J, 1);
 jsY_initlex(J, "JSON", source);
 jsonnext(J);

 if (js_iscallable(J, 2)) {
  js_newobject(J);
  jsonvalue(J);
  js_defproperty(J, -2, "", 0);
  jsonrevive(J, "");
 } else {
  jsonvalue(J);
 }
}
