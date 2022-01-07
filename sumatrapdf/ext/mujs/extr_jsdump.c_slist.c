
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* b; int a; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ AST_LIST ;
 int assert (int) ;
 int pc (char) ;
 int snode (int,int ) ;

__attribute__((used)) static void slist(int d, js_Ast *list)
{
 pc('[');
 while (list) {
  assert(list->type == AST_LIST);
  snode(d, list->a);
  list = list->b;
  if (list)
   pc(' ');
 }
 pc(']');
}
