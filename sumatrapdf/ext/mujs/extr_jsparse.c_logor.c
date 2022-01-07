
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int DECREC () ;
 int * EXP2 (int ,int *,int *) ;
 int INCREC () ;
 int LOGOR ;
 int TK_OR ;
 scalar_t__ jsP_accept (TYPE_1__*,int ) ;
 int * logand (TYPE_1__*,int) ;

__attribute__((used)) static js_Ast *logor(js_State *J, int notin)
{
 js_Ast *a = logand(J, notin);
 int line = J->lexline;
 if (jsP_accept(J, TK_OR)) {
  INCREC();
  a = EXP2(LOGOR, a, logor(J, notin));
  DECREC();
 }
 return a;
}
