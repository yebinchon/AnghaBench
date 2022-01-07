
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* b; int c; struct TYPE_5__* a; } ;
typedef TYPE_1__ js_Ast ;


 scalar_t__ AST_LIST ;
 int COMMA ;



 int assert (int) ;
 int in (int) ;
 int nl () ;
 int pargs (int,TYPE_1__*) ;
 int pc (char) ;
 int pexpi (int,int ,TYPE_1__*) ;
 int ps (char*) ;
 int pstmlist (int,int ) ;
 int sp () ;

__attribute__((used)) static void pobject(int d, js_Ast *list)
{
 pc('{');
 if (list) {
  nl();
  in(d+1);
 }
 while (list) {
  js_Ast *kv = list->a;
  assert(list->type == AST_LIST);
  switch (kv->type) {
  default: break;
  case 128:
   pexpi(d+1, COMMA, kv->a);
   pc(':'); sp();
   pexpi(d+1, COMMA, kv->b);
   break;
  case 130:
   ps("get ");
   pexpi(d+1, COMMA, kv->a);
   ps("()"); sp(); pc('{'); nl();
   pstmlist(d+1, kv->c);
   in(d+1); pc('}');
   break;
  case 129:
   ps("set ");
   pexpi(d+1, COMMA, kv->a);
   pc('(');
   pargs(d+1, kv->b);
   pc(')'); sp(); pc('{'); nl();
   pstmlist(d+1, kv->c);
   in(d+1); pc('}');
   break;
  }
  list = list->b;
  if (list) {
   pc(',');
   nl();
   in(d+1);
  } else {
   nl();
   in(d);
  }
 }
 pc('}');
}
