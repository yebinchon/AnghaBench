
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lexline; } ;
typedef TYPE_1__ js_State ;
typedef TYPE_1__* js_Ast ;


 int BITXOR ;
 TYPE_1__** EXP2 (int ,TYPE_1__**,TYPE_1__**) ;
 int INCREC () ;
 int POPREC () ;
 int SAVEREC () ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;

__attribute__((used)) static js_Ast *bitxor(js_State *J, int notin)
{
 js_Ast *a = bitand(J, notin);
 SAVEREC();
 int line = J->lexline;
 while (jsP_accept(J, '^')) {
  INCREC();
  a = EXP2(BITXOR, a, bitand(J, notin));
  line = J->lexline;
 }
 POPREC();
 return a;
}
