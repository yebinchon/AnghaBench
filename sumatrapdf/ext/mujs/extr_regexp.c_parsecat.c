
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cstate {char lookahead; } ;
struct TYPE_4__ {struct TYPE_4__* y; struct TYPE_4__* x; } ;
typedef TYPE_1__ Renode ;


 int P_CAT ;
 TYPE_1__* newnode (struct cstate*,int ) ;
 void* parserep (struct cstate*) ;

__attribute__((used)) static Renode *parsecat(struct cstate *g)
{
 Renode *cat, *head, **tail;
 if (g->lookahead && g->lookahead != '|' && g->lookahead != ')') {

  head = parserep(g);
  tail = &head;
  while (g->lookahead && g->lookahead != '|' && g->lookahead != ')') {
   cat = newnode(g, P_CAT);
   cat->x = *tail;
   cat->y = parserep(g);
   *tail = cat;
   tail = &cat->y;
  }
  return head;
 }
 return ((void*)0);
}
