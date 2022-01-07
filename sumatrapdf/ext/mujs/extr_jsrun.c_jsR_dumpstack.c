
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int BOT ;
 int * STACK ;
 int TOP ;
 int js_dumpvalue (int *,int ) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void jsR_dumpstack(js_State *J)
{
 int i;
 printf("stack {\n");
 for (i = 0; i < TOP; ++i) {
  putchar(i == BOT ? '>' : ' ');
  printf("%4d: ", i);
  js_dumpvalue(J, STACK[i]);
  putchar('\n');
 }
 printf("}\n");
}
