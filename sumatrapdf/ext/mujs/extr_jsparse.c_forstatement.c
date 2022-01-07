
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char lookahead; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int FOR ;
 int FOR_IN ;
 int FOR_IN_VAR ;
 int FOR_VAR ;
 int * STM3 (int ,int *,int *,int *) ;
 int * STM4 (int ,int *,int *,int *,int *) ;
 char TK_IN ;
 char TK_VAR ;
 int * expression (TYPE_1__*,int) ;
 int * forexpression (TYPE_1__*,char) ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 int jsP_error (TYPE_1__*,char*,int ) ;
 int jsP_expect (TYPE_1__*,char) ;
 int jsY_tokenstring (char) ;
 int * statement (TYPE_1__*) ;
 int * vardeclist (TYPE_1__*,int) ;

__attribute__((used)) static js_Ast *forstatement(js_State *J, int line)
{
 js_Ast *a, *b, *c, *d;
 jsP_expect(J, '(');
 if (jsP_accept(J, TK_VAR)) {
  a = vardeclist(J, 1);
  if (jsP_accept(J, ';')) {
   b = forexpression(J, ';');
   c = forexpression(J, ')');
   d = statement(J);
   return STM4(FOR_VAR, a, b, c, d);
  }
  if (jsP_accept(J, TK_IN)) {
   b = expression(J, 0);
   jsP_expect(J, ')');
   c = statement(J);
   return STM3(FOR_IN_VAR, a, b, c);
  }
  jsP_error(J, "unexpected token in for-var-statement: %s", jsY_tokenstring(J->lookahead));
 }

 if (J->lookahead != ';')
  a = expression(J, 1);
 else
  a = ((void*)0);
 if (jsP_accept(J, ';')) {
  b = forexpression(J, ';');
  c = forexpression(J, ')');
  d = statement(J);
  return STM4(FOR, a, b, c, d);
 }
 if (jsP_accept(J, TK_IN)) {
  b = expression(J, 0);
  jsP_expect(J, ')');
  c = statement(J);
  return STM3(FOR_IN, a, b, c);
 }
 jsP_error(J, "unexpected token in for-statement: %s", jsY_tokenstring(J->lookahead));
}
