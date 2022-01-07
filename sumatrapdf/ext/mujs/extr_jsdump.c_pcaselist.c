
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* b; struct TYPE_5__* a; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ STM_CASE ;
 scalar_t__ STM_DEFAULT ;
 int in (int) ;
 int nl () ;
 int pc (char) ;
 int pexp (int,TYPE_1__*) ;
 int ps (char*) ;
 int pstmlist (int,TYPE_1__*) ;

__attribute__((used)) static void pcaselist(int d, js_Ast *list)
{
 while (list) {
  js_Ast *stm = list->a;
  if (stm->type == STM_CASE) {
   in(d); ps("case "); pexp(d, stm->a); pc(':'); nl();
   pstmlist(d, stm->b);
  }
  if (stm->type == STM_DEFAULT) {
   in(d); ps("default:"); nl();
   pstmlist(d, stm->a);
  }
  list = list->b;
 }
}
