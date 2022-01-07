
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cstate {scalar_t__ lookahead; scalar_t__ yychar; scalar_t__ nsub; TYPE_1__** sub; int yycc; } ;
struct TYPE_4__ {scalar_t__ c; size_t n; struct TYPE_4__* x; int cc; } ;
typedef TYPE_1__ Renode ;


 scalar_t__ L_CCLASS ;
 scalar_t__ L_CHAR ;
 char L_NC ;
 scalar_t__ L_NCCLASS ;
 char L_NLA ;
 char L_PLA ;
 scalar_t__ L_REF ;
 scalar_t__ MAXSUB ;
 int P_ANY ;
 int P_CCLASS ;
 int P_CHAR ;
 int P_NCCLASS ;
 int P_NLA ;
 int P_PAR ;
 int P_PLA ;
 int P_REF ;
 scalar_t__ accept (struct cstate*,char) ;
 int die (struct cstate*,char*) ;
 TYPE_1__* newnode (struct cstate*,int ) ;
 int next (struct cstate*) ;
 void* parsealt (struct cstate*) ;

__attribute__((used)) static Renode *parseatom(struct cstate *g)
{
 Renode *atom;
 if (g->lookahead == L_CHAR) {
  atom = newnode(g, P_CHAR);
  atom->c = g->yychar;
  next(g);
  return atom;
 }
 if (g->lookahead == L_CCLASS) {
  atom = newnode(g, P_CCLASS);
  atom->cc = g->yycc;
  next(g);
  return atom;
 }
 if (g->lookahead == L_NCCLASS) {
  atom = newnode(g, P_NCCLASS);
  atom->cc = g->yycc;
  next(g);
  return atom;
 }
 if (g->lookahead == L_REF) {
  atom = newnode(g, P_REF);
  if (g->yychar == 0 || g->yychar >= g->nsub || !g->sub[g->yychar])
   die(g, "invalid back-reference");
  atom->n = g->yychar;
  atom->x = g->sub[g->yychar];
  next(g);
  return atom;
 }
 if (accept(g, '.'))
  return newnode(g, P_ANY);
 if (accept(g, '(')) {
  atom = newnode(g, P_PAR);
  if (g->nsub == MAXSUB)
   die(g, "too many captures");
  atom->n = g->nsub++;
  atom->x = parsealt(g);
  g->sub[atom->n] = atom;
  if (!accept(g, ')'))
   die(g, "unmatched '('");
  return atom;
 }
 if (accept(g, L_NC)) {
  atom = parsealt(g);
  if (!accept(g, ')'))
   die(g, "unmatched '('");
  return atom;
 }
 if (accept(g, L_PLA)) {
  atom = newnode(g, P_PLA);
  atom->x = parsealt(g);
  if (!accept(g, ')'))
   die(g, "unmatched '('");
  return atom;
 }
 if (accept(g, L_NLA)) {
  atom = newnode(g, P_NLA);
  atom->x = parsealt(g);
  if (!accept(g, ')'))
   die(g, "unmatched '('");
  return atom;
 }
 die(g, "syntax error");
 return ((void*)0);
}
