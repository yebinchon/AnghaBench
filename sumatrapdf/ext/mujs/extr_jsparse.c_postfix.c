
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; int newline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * EXP1 (int ,int *) ;
 int POSTDEC ;
 int POSTINC ;
 int TK_DEC ;
 int TK_INC ;
 int * callexp (TYPE_1__*) ;
 scalar_t__ jsP_accept (TYPE_1__*,int ) ;

__attribute__((used)) static js_Ast *postfix(js_State *J)
{
 js_Ast *a = callexp(J);
 int line = J->lexline;
 if (!J->newline && jsP_accept(J, TK_INC)) return EXP1(POSTINC, a);
 if (!J->newline && jsP_accept(J, TK_DEC)) return EXP1(POSTDEC, a);
 return a;
}
