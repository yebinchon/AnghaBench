
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * EXP2 (int ,int *,int *) ;
 int INCREC () ;
 int POPREC () ;
 int SAVEREC () ;
 int SHL ;
 int SHR ;
 int TK_SHL ;
 int TK_SHR ;
 int TK_USHR ;
 int USHR ;
 int * additive (TYPE_1__*) ;
 scalar_t__ jsP_accept (TYPE_1__*,int ) ;

__attribute__((used)) static js_Ast *shift(js_State *J)
{
 js_Ast *a = additive(J);
 int line;
 SAVEREC();
loop:
 INCREC();
 line = J->lexline;
 if (jsP_accept(J, TK_SHL)) { a = EXP2(SHL, a, additive(J)); goto loop; }
 if (jsP_accept(J, TK_SHR)) { a = EXP2(SHR, a, additive(J)); goto loop; }
 if (jsP_accept(J, TK_USHR)) { a = EXP2(USHR, a, additive(J)); goto loop; }
 POPREC();
 return a;
}
