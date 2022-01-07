
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lexline; char lookahead; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int * EXP0 (int ) ;
 int UNDEF ;
 int * assignment (TYPE_1__*,int ) ;

__attribute__((used)) static js_Ast *arrayelement(js_State *J)
{
 int line = J->lexline;
 if (J->lookahead == ',')
  return EXP0(UNDEF);
 return assignment(J, 0);
}
