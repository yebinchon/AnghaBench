
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int Rune ;


 int UTFmax ;
 int js_pushstring (int *,char*) ;
 int js_pushundefined (int *) ;
 size_t runetochar (char*,int *) ;

__attribute__((used)) static void js_pushrune(js_State *J, Rune rune)
{
 char buf[UTFmax + 1];
 if (rune > 0) {
  buf[runetochar(buf, &rune)] = 0;
  js_pushstring(J, buf);
 } else {
  js_pushundefined(J);
 }
}
