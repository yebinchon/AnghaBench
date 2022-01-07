
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int TK_FUNCTION ;
 int * fundec (TYPE_1__*,int) ;
 scalar_t__ jsP_accept (TYPE_1__*,int ) ;
 int * statement (TYPE_1__*) ;

__attribute__((used)) static js_Ast *scriptelement(js_State *J)
{
 int line = J->lexline;
 if (jsP_accept(J, TK_FUNCTION))
  return fundec(J, line);
 return statement(J);
}
