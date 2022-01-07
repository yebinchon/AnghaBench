
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {int yychar; char* source; } ;


 int L_CCLASS ;
 int L_CHAR ;
 int L_NC ;
 int L_NCCLASS ;
 int L_NLA ;
 int L_NWORD ;
 int L_PLA ;
 int L_REF ;
 int L_WORD ;
 int addranges_d (struct cstate*) ;
 int addranges_s (struct cstate*) ;
 int addranges_w (struct cstate*) ;
 int lexclass (struct cstate*) ;
 int lexcount (struct cstate*) ;
 int newcclass (struct cstate*) ;
 int nextrune (struct cstate*) ;

__attribute__((used)) static int lex(struct cstate *g)
{
 int quoted = nextrune(g);
 if (quoted) {
  switch (g->yychar) {
  case 'b': return L_WORD;
  case 'B': return L_NWORD;
  case 'd': newcclass(g); addranges_d(g); return L_CCLASS;
  case 's': newcclass(g); addranges_s(g); return L_CCLASS;
  case 'w': newcclass(g); addranges_w(g); return L_CCLASS;
  case 'D': newcclass(g); addranges_d(g); return L_NCCLASS;
  case 'S': newcclass(g); addranges_s(g); return L_NCCLASS;
  case 'W': newcclass(g); addranges_w(g); return L_NCCLASS;
  case '0': g->yychar = 0; return L_CHAR;
  }
  if (g->yychar >= '0' && g->yychar <= '9') {
   g->yychar -= '0';
   if (*g->source >= '0' && *g->source <= '9')
    g->yychar = g->yychar * 10 + *g->source++ - '0';
   return L_REF;
  }
  return L_CHAR;
 }

 switch (g->yychar) {
 case 0:
 case '$': case ')': case '*': case '+':
 case '.': case '?': case '^': case '|':
  return g->yychar;
 }

 if (g->yychar == '{')
  return lexcount(g);
 if (g->yychar == '[')
  return lexclass(g);
 if (g->yychar == '(') {
  if (g->source[0] == '?') {
   if (g->source[1] == ':') {
    g->source += 2;
    return L_NC;
   }
   if (g->source[1] == '=') {
    g->source += 2;
    return L_PLA;
   }
   if (g->source[1] == '!') {
    g->source += 2;
    return L_NLA;
   }
  }
  return '(';
 }

 return L_CHAR;
}
