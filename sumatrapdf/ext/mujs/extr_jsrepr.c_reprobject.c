
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Buffer ;


 int js_getproperty (int *,int,char const*) ;
 int js_gettop (int *) ;
 scalar_t__ js_isobject (int *,int) ;
 char* js_nextiterator (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushiterator (int *,int,int) ;
 int js_putc (int *,int **,char) ;
 int js_puts (int *,int **,char*) ;
 scalar_t__ js_toobject (int *,int) ;
 int reprident (int *,int **,char const*) ;
 int reprvalue (int *,int **) ;

__attribute__((used)) static void reprobject(js_State *J, js_Buffer **sb)
{
 const char *key;
 int i, n;

 n = js_gettop(J) - 1;
 for (i = 0; i < n; ++i) {
  if (js_isobject(J, i)) {
   if (js_toobject(J, i) == js_toobject(J, -1)) {
    js_puts(J, sb, "{}");
    return;
   }
  }
 }

 n = 0;
 js_putc(J, sb, '{');
 js_pushiterator(J, -1, 1);
 while ((key = js_nextiterator(J, -1))) {
  if (n++ > 0)
   js_puts(J, sb, ", ");
  reprident(J, sb, key);
  js_puts(J, sb, ": ");
  js_getproperty(J, -2, key);
  reprvalue(J, sb);
  js_pop(J, 1);
 }
 js_pop(J, 1);
 js_putc(J, sb, '}');
}
