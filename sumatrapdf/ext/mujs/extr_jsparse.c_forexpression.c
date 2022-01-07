
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lookahead; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * expression (TYPE_1__*,int ) ;
 int jsP_expect (TYPE_1__*,int) ;

__attribute__((used)) static js_Ast *forexpression(js_State *J, int end)
{
 js_Ast *a = ((void*)0);
 if (J->lookahead != end)
  a = expression(J, 0);
 jsP_expect(J, end);
 return a;
}
