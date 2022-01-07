
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int ASS ;
 int ASS_ADD ;
 int ASS_BITAND ;
 int ASS_BITOR ;
 int ASS_BITXOR ;
 int ASS_DIV ;
 int ASS_MOD ;
 int ASS_MUL ;
 int ASS_SHL ;
 int ASS_SHR ;
 int ASS_SUB ;
 int ASS_USHR ;
 int DECREC () ;
 int * EXP2 (int ,int *,int *) ;
 int INCREC () ;
 char TK_ADD_ASS ;
 char TK_AND_ASS ;
 char TK_DIV_ASS ;
 char TK_MOD_ASS ;
 char TK_MUL_ASS ;
 char TK_OR_ASS ;
 char TK_SHL_ASS ;
 char TK_SHR_ASS ;
 char TK_SUB_ASS ;
 char TK_USHR_ASS ;
 char TK_XOR_ASS ;
 int * conditional (TYPE_1__*,int) ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;

__attribute__((used)) static js_Ast *assignment(js_State *J, int notin)
{
 js_Ast *a = conditional(J, notin);
 int line = J->lexline;
 INCREC();
 if (jsP_accept(J, '=')) a = EXP2(ASS, a, assignment(J, notin));
 else if (jsP_accept(J, TK_MUL_ASS)) a = EXP2(ASS_MUL, a, assignment(J, notin));
 else if (jsP_accept(J, TK_DIV_ASS)) a = EXP2(ASS_DIV, a, assignment(J, notin));
 else if (jsP_accept(J, TK_MOD_ASS)) a = EXP2(ASS_MOD, a, assignment(J, notin));
 else if (jsP_accept(J, TK_ADD_ASS)) a = EXP2(ASS_ADD, a, assignment(J, notin));
 else if (jsP_accept(J, TK_SUB_ASS)) a = EXP2(ASS_SUB, a, assignment(J, notin));
 else if (jsP_accept(J, TK_SHL_ASS)) a = EXP2(ASS_SHL, a, assignment(J, notin));
 else if (jsP_accept(J, TK_SHR_ASS)) a = EXP2(ASS_SHR, a, assignment(J, notin));
 else if (jsP_accept(J, TK_USHR_ASS)) a = EXP2(ASS_USHR, a, assignment(J, notin));
 else if (jsP_accept(J, TK_AND_ASS)) a = EXP2(ASS_BITAND, a, assignment(J, notin));
 else if (jsP_accept(J, TK_XOR_ASS)) a = EXP2(ASS_BITXOR, a, assignment(J, notin));
 else if (jsP_accept(J, TK_OR_ASS)) a = EXP2(ASS_BITOR, a, assignment(J, notin));
 DECREC();
 return a;
}
