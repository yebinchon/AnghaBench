
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {int lookahead; } ;


 int lex (struct cstate*) ;

__attribute__((used)) static void next(struct cstate *g)
{
 g->lookahead = lex(g);
}
