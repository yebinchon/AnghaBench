
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int EQ ;
 int * EXP2 (int ,int *,int *) ;
 int INCREC () ;
 int NE ;
 int POPREC () ;
 int SAVEREC () ;
 int STRICTEQ ;
 int STRICTNE ;
 int TK_EQ ;
 int TK_NE ;
 int TK_STRICTEQ ;
 int TK_STRICTNE ;
 scalar_t__ jsP_accept (TYPE_1__*,int ) ;
 int * relational (TYPE_1__*,int) ;

__attribute__((used)) static js_Ast *equality(js_State *J, int notin)
{
 js_Ast *a = relational(J, notin);
 int line;
 SAVEREC();
loop:
 INCREC();
 line = J->lexline;
 if (jsP_accept(J, TK_EQ)) { a = EXP2(EQ, a, relational(J, notin)); goto loop; }
 if (jsP_accept(J, TK_NE)) { a = EXP2(NE, a, relational(J, notin)); goto loop; }
 if (jsP_accept(J, TK_STRICTEQ)) { a = EXP2(STRICTEQ, a, relational(J, notin)); goto loop; }
 if (jsP_accept(J, TK_STRICTNE)) { a = EXP2(STRICTNE, a, relational(J, notin)); goto loop; }
 POPREC();
 return a;
}
