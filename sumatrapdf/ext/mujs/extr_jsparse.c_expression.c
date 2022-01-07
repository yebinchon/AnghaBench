
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int COMMA ;
 int * EXP2 (int ,int *,int *) ;
 int INCREC () ;
 int POPREC () ;
 int SAVEREC () ;
 int * assignment (TYPE_1__*,int) ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;

__attribute__((used)) static js_Ast *expression(js_State *J, int notin)
{
 js_Ast *a = assignment(J, notin);
 SAVEREC();
 int line = J->lexline;
 while (jsP_accept(J, ',')) {
  INCREC();
  a = EXP2(COMMA, a, assignment(J, notin));
  line = J->lexline;
 }
 POPREC();
 return a;
}
