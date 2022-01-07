
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * EXP1 (int ,int *) ;
 int * EXP2 (int ,int *,int ) ;
 int VAR ;
 int assignment (TYPE_1__*,int) ;
 int * identifier (TYPE_1__*) ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;

__attribute__((used)) static js_Ast *vardec(js_State *J, int notin)
{
 js_Ast *a = identifier(J);
 int line = J->lexline;
 if (jsP_accept(J, '='))
  return EXP2(VAR, a, assignment(J, notin));
 return EXP1(VAR, a);
}
