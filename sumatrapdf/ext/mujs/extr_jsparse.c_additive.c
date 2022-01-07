
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int ADD ;
 int * EXP2 (int ,int *,int *) ;
 int INCREC () ;
 int POPREC () ;
 int SAVEREC () ;
 int SUB ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 int * multiplicative (TYPE_1__*) ;

__attribute__((used)) static js_Ast *additive(js_State *J)
{
 js_Ast *a = multiplicative(J);
 int line;
 SAVEREC();
loop:
 INCREC();
 line = J->lexline;
 if (jsP_accept(J, '+')) { a = EXP2(ADD, a, multiplicative(J)); goto loop; }
 if (jsP_accept(J, '-')) { a = EXP2(SUB, a, multiplicative(J)); goto loop; }
 POPREC();
 return a;
}
