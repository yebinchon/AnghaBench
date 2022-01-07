
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Buffer ;


 char* jsV_numbertostring (int *,char*,double) ;
 int js_puts (int *,int **,char*) ;
 scalar_t__ signbit (double) ;

__attribute__((used)) static void reprnum(js_State *J, js_Buffer **sb, double n)
{
 char buf[40];
 if (n == 0 && signbit(n))
  js_puts(J, sb, "-0");
 else
  js_puts(J, sb, jsV_numbertostring(J, buf, n));
}
