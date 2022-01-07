
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * EXP1 (int ,int *) ;
 int * EXP2 (int ,int *,int *) ;
 int NEW ;
 char TK_FUNCTION ;
 char TK_NEW ;
 int * arguments (TYPE_1__*) ;
 int * funexp (TYPE_1__*,int) ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 int jsP_expect (TYPE_1__*,char) ;
 int * memberexp (TYPE_1__*) ;
 int * primary (TYPE_1__*) ;

__attribute__((used)) static js_Ast *newexp(js_State *J)
{
 js_Ast *a, *b;
 int line = J->lexline;

 if (jsP_accept(J, TK_NEW)) {
  a = memberexp(J);
  if (jsP_accept(J, '(')) {
   b = arguments(J);
   jsP_expect(J, ')');
   return EXP2(NEW, a, b);
  }
  return EXP1(NEW, a);
 }

 if (jsP_accept(J, TK_FUNCTION))
  return funexp(J, line);

 return primary(J);
}
