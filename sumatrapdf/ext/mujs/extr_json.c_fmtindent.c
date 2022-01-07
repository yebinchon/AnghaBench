
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Buffer ;


 int js_putc (int *,int **,char) ;
 int js_puts (int *,int **,char const*) ;

__attribute__((used)) static void fmtindent(js_State *J, js_Buffer **sb, const char *gap, int level)
{
 js_putc(J, sb, '\n');
 while (level--)
  js_puts(J, sb, gap);
}
