
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Ast ;


 int AST_FUNDEC ;
 int * funbody (int *) ;
 int * identifier (int *) ;
 int jsP_expect (int *,char) ;
 int * jsP_newnode (int *,int ,int,int *,int *,int *,int ) ;
 int * parameters (int *) ;

__attribute__((used)) static js_Ast *fundec(js_State *J, int line)
{
 js_Ast *a, *b, *c;
 a = identifier(J);
 jsP_expect(J, '(');
 b = parameters(J);
 jsP_expect(J, ')');
 c = funbody(J);
 return jsP_newnode(J, AST_FUNDEC, line, a, b, c, 0);
}
