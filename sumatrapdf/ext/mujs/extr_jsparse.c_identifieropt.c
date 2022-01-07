
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lookahead; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 scalar_t__ TK_IDENTIFIER ;
 int * identifier (TYPE_1__*) ;

__attribute__((used)) static js_Ast *identifieropt(js_State *J)
{
 if (J->lookahead == TK_IDENTIFIER)
  return identifier(J);
 return ((void*)0);
}
