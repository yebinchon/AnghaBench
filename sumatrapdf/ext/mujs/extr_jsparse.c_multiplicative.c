
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int DIV ;
 int * EXP2 (int ,int *,int *) ;
 int INCREC () ;
 int MOD ;
 int MUL ;
 int POPREC () ;
 int SAVEREC () ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 int * unary (TYPE_1__*) ;

__attribute__((used)) static js_Ast *multiplicative(js_State *J)
{
 js_Ast *a = unary(J);
 int line;
 SAVEREC();
loop:
 INCREC();
 line = J->lexline;
 if (jsP_accept(J, '*')) { a = EXP2(MUL, a, unary(J)); goto loop; }
 if (jsP_accept(J, '/')) { a = EXP2(DIV, a, unary(J)); goto loop; }
 if (jsP_accept(J, '%')) { a = EXP2(MOD, a, unary(J)); goto loop; }
 POPREC();
 return a;
}
