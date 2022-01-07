
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * EXP2 (int ,int *,int ) ;
 int INCREC () ;
 int INDEX ;
 int MEMBER ;
 int POPREC () ;
 int SAVEREC () ;
 int expression (TYPE_1__*,int ) ;
 int identifiername (TYPE_1__*) ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 int jsP_expect (TYPE_1__*,char) ;
 int * newexp (TYPE_1__*) ;

__attribute__((used)) static js_Ast *memberexp(js_State *J)
{
 js_Ast *a = newexp(J);
 int line;
 SAVEREC();
loop:
 INCREC();
 line = J->lexline;
 if (jsP_accept(J, '.')) { a = EXP2(MEMBER, a, identifiername(J)); goto loop; }
 if (jsP_accept(J, '[')) { a = EXP2(INDEX, a, expression(J, 0)); jsP_expect(J, ']'); goto loop; }
 POPREC();
 return a;
}
