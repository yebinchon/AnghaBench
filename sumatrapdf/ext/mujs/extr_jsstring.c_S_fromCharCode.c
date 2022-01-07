
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int Rune ;


 int UTFmax ;
 int js_endtry (int *) ;
 int js_free (int *,char*) ;
 int js_gettop (int *) ;
 char* js_malloc (int *,int) ;
 int js_pushstring (int *,char*) ;
 int js_throw (int *) ;
 int js_touint16 (int *,int) ;
 scalar_t__ js_try (int *) ;
 int runetochar (char*,int *) ;

__attribute__((used)) static void S_fromCharCode(js_State *J)
{
 int i, top = js_gettop(J);
 Rune c;
 char *s, *p;

 s = p = js_malloc(J, (top-1) * UTFmax + 1);

 if (js_try(J)) {
  js_free(J, s);
  js_throw(J);
 }

 for (i = 1; i < top; ++i) {
  c = js_touint16(J, i);
  p += runetochar(p, &c);
 }
 *p = 0;
 js_pushstring(J, s);

 js_endtry(J);
 js_free(J, s);
}
