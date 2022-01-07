
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ lookahead; int text; int number; } ;
typedef TYPE_1__ js_State ;
typedef int js_Ast ;


 int EXP_NUMBER ;
 int EXP_STRING ;
 scalar_t__ TK_NUMBER ;
 scalar_t__ TK_STRING ;
 int * identifiername (TYPE_1__*) ;
 int * jsP_newnumnode (TYPE_1__*,int ,int ) ;
 int * jsP_newstrnode (TYPE_1__*,int ,int ) ;
 int jsP_next (TYPE_1__*) ;

__attribute__((used)) static js_Ast *propname(js_State *J)
{
 js_Ast *name;
 if (J->lookahead == TK_NUMBER) {
  name = jsP_newnumnode(J, EXP_NUMBER, J->number);
  jsP_next(J);
 } else if (J->lookahead == TK_STRING) {
  name = jsP_newstrnode(J, EXP_STRING, J->text);
  jsP_next(J);
 } else {
  name = identifiername(J);
 }
 return name;
}
