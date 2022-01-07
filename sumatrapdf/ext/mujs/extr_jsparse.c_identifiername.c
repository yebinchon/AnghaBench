
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lookahead; int text; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int AST_IDENTIFIER ;
 scalar_t__ TK_BREAK ;
 scalar_t__ TK_IDENTIFIER ;
 int jsP_error (TYPE_1__*,char*,int ) ;
 int * jsP_newstrnode (TYPE_1__*,int ,int ) ;
 int jsP_next (TYPE_1__*) ;
 int jsY_tokenstring (scalar_t__) ;

__attribute__((used)) static js_Ast *identifiername(js_State *J)
{
 if (J->lookahead == TK_IDENTIFIER || J->lookahead >= TK_BREAK) {
  js_Ast *a = jsP_newstrnode(J, AST_IDENTIFIER, J->text);
  jsP_next(J);
  return a;
 }
 jsP_error(J, "unexpected token: %s (expected identifier or keyword)", jsY_tokenstring(J->lookahead));
}
