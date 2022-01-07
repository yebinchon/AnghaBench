
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_iscoercible (int *,int) ;
 char const* js_tostring (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static const char *checkstring(js_State *J, int idx)
{
 if (!js_iscoercible(J, idx))
  js_typeerror(J, "string function called on null or undefined");
 return js_tostring(J, idx);
}
