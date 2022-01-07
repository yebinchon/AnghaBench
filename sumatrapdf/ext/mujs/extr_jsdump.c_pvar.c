
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ b; scalar_t__ a; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ EXP_VAR ;
 int assert (int) ;
 int pc (char) ;
 int pexp (int,scalar_t__) ;
 int sp () ;

__attribute__((used)) static void pvar(int d, js_Ast *var)
{
 assert(var->type == EXP_VAR);
 pexp(d, var->a);
 if (var->b) {
  sp(); pc('='); sp();
  pexp(d, var->b);
 }
}
