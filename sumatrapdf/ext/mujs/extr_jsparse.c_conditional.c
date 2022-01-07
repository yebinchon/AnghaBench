
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int COND ;
 int DECREC () ;
 int * EXP3 (int ,int *,int *,int *) ;
 int INCREC () ;
 int * assignment (TYPE_1__*,int) ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 int jsP_expect (TYPE_1__*,char) ;
 int * logor (TYPE_1__*,int) ;

__attribute__((used)) static js_Ast *conditional(js_State *J, int notin)
{
 js_Ast *a = logor(J, notin);
 int line = J->lexline;
 if (jsP_accept(J, '?')) {
  js_Ast *b, *c;
  INCREC();
  b = assignment(J, 0);
  jsP_expect(J, ':');
  c = assignment(J, notin);
  DECREC();
  return EXP3(COND, a, b, c);
 }
 return a;
}
