
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Buffer ;


 int js_getlength (int *,int) ;
 int js_gettop (int *) ;
 scalar_t__ js_hasindex (int *,int,int) ;
 scalar_t__ js_isobject (int *,int) ;
 int js_pop (int *,int) ;
 int js_putc (int *,int **,char) ;
 int js_puts (int *,int **,char*) ;
 scalar_t__ js_toobject (int *,int) ;
 int reprvalue (int *,int **) ;

__attribute__((used)) static void reprarray(js_State *J, js_Buffer **sb)
{
 int n, i;

 n = js_gettop(J) - 1;
 for (i = 0; i < n; ++i) {
  if (js_isobject(J, i)) {
   if (js_toobject(J, i) == js_toobject(J, -1)) {
    js_puts(J, sb, "[]");
    return;
   }
  }
 }

 js_putc(J, sb, '[');
 n = js_getlength(J, -1);
 for (i = 0; i < n; ++i) {
  if (i > 0)
   js_puts(J, sb, ", ");
  if (js_hasindex(J, -1, i)) {
   reprvalue(J, sb);
   js_pop(J, 1);
  }
 }
 js_putc(J, sb, ']');
}
