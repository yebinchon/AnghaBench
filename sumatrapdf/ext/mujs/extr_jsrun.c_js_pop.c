
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 scalar_t__ BOT ;
 scalar_t__ TOP ;
 int js_error (int *,char*) ;

void js_pop(js_State *J, int n)
{
 TOP -= n;
 if (TOP < BOT) {
  TOP = BOT;
  js_error(J, "stack underflow!");
 }
}
