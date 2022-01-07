
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Ast ;


 int jsP_dumplist (int *,int *) ;
 int jsP_dumpsyntax (int *,int *,int) ;
 int jsP_freeparse (int *) ;
 int * jsP_parse (int *,char const*,char const*) ;
 int js_endtry (int *) ;
 int js_throw (int *) ;
 scalar_t__ js_try (int *) ;

__attribute__((used)) static void js_ppstring(js_State *J, const char *filename, const char *source, int minify)
{
 js_Ast *P;
 if (js_try(J)) {
  jsP_freeparse(J);
  js_throw(J);
 }
 P = jsP_parse(J, filename, source);
 if (minify > 2)
  jsP_dumplist(J, P);
 else
  jsP_dumpsyntax(J, P, minify);
 jsP_freeparse(J);
 js_endtry(J);
}
