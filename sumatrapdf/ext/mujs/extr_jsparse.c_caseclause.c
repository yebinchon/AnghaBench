
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lexline; int lookahead; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int CASE ;
 int DEFAULT ;
 int * STM1 (int ,int *) ;
 int * STM2 (int ,int *,int *) ;
 int TK_CASE ;
 int TK_DEFAULT ;
 int * expression (TYPE_1__*,int ) ;
 scalar_t__ jsP_accept (TYPE_1__*,int ) ;
 int jsP_error (TYPE_1__*,char*,int ) ;
 int jsP_expect (TYPE_1__*,char) ;
 int jsY_tokenstring (int ) ;
 int * statementlist (TYPE_1__*) ;

__attribute__((used)) static js_Ast *caseclause(js_State *J)
{
 js_Ast *a, *b;
 int line = J->lexline;

 if (jsP_accept(J, TK_CASE)) {
  a = expression(J, 0);
  jsP_expect(J, ':');
  b = statementlist(J);
  return STM2(CASE, a, b);
 }

 if (jsP_accept(J, TK_DEFAULT)) {
  jsP_expect(J, ':');
  a = statementlist(J);
  return STM1(DEFAULT, a);
 }

 jsP_error(J, "unexpected token in switch: %s (expected 'case' or 'default')", jsY_tokenstring(J->lookahead));
}
