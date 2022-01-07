
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cstate {int dummy; } ;
struct TYPE_4__ {void* y; struct TYPE_4__* x; } ;
typedef TYPE_1__ Renode ;


 int P_ALT ;
 scalar_t__ accept (struct cstate*,char) ;
 TYPE_1__* newnode (struct cstate*,int ) ;
 void* parsecat (struct cstate*) ;

__attribute__((used)) static Renode *parsealt(struct cstate *g)
{
 Renode *alt, *x;
 alt = parsecat(g);
 while (accept(g, '|')) {
  x = alt;
  alt = newnode(g, P_ALT);
  alt->x = x;
  alt->y = parsecat(g);
 }
 return alt;
}
