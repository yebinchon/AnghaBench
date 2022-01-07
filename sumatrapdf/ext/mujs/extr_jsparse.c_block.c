
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int BLOCK ;
 int * STM1 (int ,int *) ;
 int jsP_expect (TYPE_1__*,char) ;
 int * statementlist (TYPE_1__*) ;

__attribute__((used)) static js_Ast *block(js_State *J)
{
 js_Ast *a;
 int line = J->lexline;
 jsP_expect(J, '{');
 a = statementlist(J);
 jsP_expect(J, '}');
 return STM1(BLOCK, a);
}
