
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {scalar_t__ lookahead; int yymin; int yymax; } ;
typedef int Renode ;


 scalar_t__ L_COUNT ;
 char L_NWORD ;
 char L_WORD ;
 int P_BOL ;
 int P_EOL ;
 int P_NWORD ;
 int P_WORD ;
 int REPINF ;
 scalar_t__ accept (struct cstate*,char) ;
 int die (struct cstate*,char*) ;
 int * newnode (struct cstate*,int ) ;
 int * newrep (struct cstate*,int *,scalar_t__,int,int) ;
 int next (struct cstate*) ;
 int * parseatom (struct cstate*) ;

__attribute__((used)) static Renode *parserep(struct cstate *g)
{
 Renode *atom;

 if (accept(g, '^')) return newnode(g, P_BOL);
 if (accept(g, '$')) return newnode(g, P_EOL);
 if (accept(g, L_WORD)) return newnode(g, P_WORD);
 if (accept(g, L_NWORD)) return newnode(g, P_NWORD);

 atom = parseatom(g);
 if (g->lookahead == L_COUNT) {
  int min = g->yymin, max = g->yymax;
  next(g);
  if (max < min)
   die(g, "invalid quantifier");
  return newrep(g, atom, accept(g, '?'), min, max);
 }
 if (accept(g, '*')) return newrep(g, atom, accept(g, '?'), 0, REPINF);
 if (accept(g, '+')) return newrep(g, atom, accept(g, '?'), 1, REPINF);
 if (accept(g, '?')) return newrep(g, atom, accept(g, '?'), 0, 1);
 return atom;
}
