
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Buffer ;


 int fmtindent (int *,int **,char const*,int) ;
 int fmtvalue (int *,int **,int ,char const*,int) ;
 int js_getlength (int *,int) ;
 int js_gettop (int *) ;
 scalar_t__ js_isobject (int *,int) ;
 int js_itoa (char*,int) ;
 int js_putc (int *,int **,char) ;
 int js_puts (int *,int **,char*) ;
 scalar_t__ js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void fmtarray(js_State *J, js_Buffer **sb, const char *gap, int level)
{
 int n, i;
 char buf[32];

 n = js_gettop(J) - 1;
 for (i = 4; i < n; ++i)
  if (js_isobject(J, i))
   if (js_toobject(J, i) == js_toobject(J, -1))
    js_typeerror(J, "cyclic object value");

 js_putc(J, sb, '[');
 n = js_getlength(J, -1);
 for (i = 0; i < n; ++i) {
  if (i) js_putc(J, sb, ',');
  if (gap) fmtindent(J, sb, gap, level + 1);
  if (!fmtvalue(J, sb, js_itoa(buf, i), gap, level + 1))
   js_puts(J, sb, "null");
 }
 if (gap && n) fmtindent(J, sb, gap, level);
 js_putc(J, sb, ']');
}
