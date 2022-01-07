
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* b; int a; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ AST_LIST ;
 int COMMA ;
 int assert (int) ;
 int comma () ;
 int pexpi (int,int ,int ) ;

__attribute__((used)) static void pargs(int d, js_Ast *list)
{
 while (list) {
  assert(list->type == AST_LIST);
  pexpi(d, COMMA, list->a);
  list = list->b;
  if (list)
   comma();
 }
}
