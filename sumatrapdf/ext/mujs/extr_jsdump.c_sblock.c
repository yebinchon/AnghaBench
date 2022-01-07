
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* b; int a; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ AST_LIST ;
 int assert (int) ;
 int in (int) ;
 int nl () ;
 int pc (char) ;
 int ps (char*) ;
 int snode (int,int ) ;

__attribute__((used)) static void sblock(int d, js_Ast *list)
{
 ps("[\n");
 in(d+1);
 while (list) {
  assert(list->type == AST_LIST);
  snode(d+1, list->a);
  list = list->b;
  if (list) {
   nl();
   in(d+1);
  }
 }
 nl(); in(d); pc(']');
}
