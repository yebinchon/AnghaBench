
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Buffer ;


 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 char* jsV_numbertostring (int *,char*,double) ;
 int js_puts (int *,int **,char*) ;

__attribute__((used)) static void fmtnum(js_State *J, js_Buffer **sb, double n)
{
 if (isnan(n)) js_puts(J, sb, "null");
 else if (isinf(n)) js_puts(J, sb, "null");
 else if (n == 0) js_puts(J, sb, "0");
 else {
  char buf[40];
  js_puts(J, sb, jsV_numbertostring(J, buf, n));
 }
}
