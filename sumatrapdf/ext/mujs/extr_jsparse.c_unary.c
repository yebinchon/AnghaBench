
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int BITNOT ;
 int DECREC () ;
 int DELETE ;
 int * EXP1 (int ,int *) ;
 int INCREC () ;
 int LOGNOT ;
 int NEG ;
 int POS ;
 int PREDEC ;
 int PREINC ;
 char TK_DEC ;
 char TK_DELETE ;
 char TK_INC ;
 char TK_TYPEOF ;
 char TK_VOID ;
 int TYPEOF ;
 int VOID ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 int * postfix (TYPE_1__*) ;

__attribute__((used)) static js_Ast *unary(js_State *J)
{
 js_Ast *a;
 int line = J->lexline;
 INCREC();
 if (jsP_accept(J, TK_DELETE)) a = EXP1(DELETE, unary(J));
 else if (jsP_accept(J, TK_VOID)) a = EXP1(VOID, unary(J));
 else if (jsP_accept(J, TK_TYPEOF)) a = EXP1(TYPEOF, unary(J));
 else if (jsP_accept(J, TK_INC)) a = EXP1(PREINC, unary(J));
 else if (jsP_accept(J, TK_DEC)) a = EXP1(PREDEC, unary(J));
 else if (jsP_accept(J, '+')) a = EXP1(POS, unary(J));
 else if (jsP_accept(J, '-')) a = EXP1(NEG, unary(J));
 else if (jsP_accept(J, '~')) a = EXP1(BITNOT, unary(J));
 else if (jsP_accept(J, '!')) a = EXP1(LOGNOT, unary(J));
 else a = postfix(J);
 DECREC();
 return a;
}
