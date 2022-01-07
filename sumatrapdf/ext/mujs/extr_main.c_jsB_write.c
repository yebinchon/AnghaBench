
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int fputs (char const*,int ) ;
 int js_gettop (int *) ;
 int js_pushundefined (int *) ;
 char* js_tostring (int *,int) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void jsB_write(js_State *J)
{
 int i, top = js_gettop(J);
 for (i = 1; i < top; ++i) {
  const char *s = js_tostring(J, i);
  if (i > 1) putchar(' ');
  fputs(s, stdout);
 }
 js_pushundefined(J);
}
