
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * EXP2 (int ,int *,int *) ;
 int GE ;
 int GT ;
 int IN ;
 int INCREC () ;
 int INSTANCEOF ;
 int LE ;
 int LT ;
 int POPREC () ;
 int SAVEREC () ;
 char TK_GE ;
 char TK_IN ;
 char TK_INSTANCEOF ;
 char TK_LE ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 int * shift (TYPE_1__*) ;

__attribute__((used)) static js_Ast *relational(js_State *J, int notin)
{
 js_Ast *a = shift(J);
 int line;
 SAVEREC();
loop:
 INCREC();
 line = J->lexline;
 if (jsP_accept(J, '<')) { a = EXP2(LT, a, shift(J)); goto loop; }
 if (jsP_accept(J, '>')) { a = EXP2(GT, a, shift(J)); goto loop; }
 if (jsP_accept(J, TK_LE)) { a = EXP2(LE, a, shift(J)); goto loop; }
 if (jsP_accept(J, TK_GE)) { a = EXP2(GE, a, shift(J)); goto loop; }
 if (jsP_accept(J, TK_INSTANCEOF)) { a = EXP2(INSTANCEOF, a, shift(J)); goto loop; }
 if (!notin && jsP_accept(J, TK_IN)) { a = EXP2(IN, a, shift(J)); goto loop; }
 POPREC();
 return a;
}
