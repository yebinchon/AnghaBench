
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_loadstringx (int *,char const*,char const*,int ) ;

void js_loadstring(js_State *J, const char *filename, const char *source)
{
 js_loadstringx(J, filename, source, 0);
}
