
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Buffer ;


 int js_putc (int *,int **,int ) ;

void js_putm(js_State *J, js_Buffer **sb, const char *s, const char *e)
{
 while (s < e)
  js_putc(J, sb, *s++);
}
