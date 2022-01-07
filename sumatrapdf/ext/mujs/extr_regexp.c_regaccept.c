
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {int lookahead; } ;


 int next (struct cstate*) ;

__attribute__((used)) static int accept(struct cstate *g, int t)
{
 if (g->lookahead == t) {
  next(g);
  return 1;
 }
 return 0;
}
