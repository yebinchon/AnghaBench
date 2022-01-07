
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cstate {scalar_t__ ncclass; TYPE_2__* yycc; TYPE_1__* prog; } ;
struct TYPE_4__ {int spans; int end; } ;
struct TYPE_3__ {TYPE_2__* cclass; } ;


 int die (struct cstate*,char*) ;
 scalar_t__ nelem (TYPE_2__*) ;

__attribute__((used)) static void newcclass(struct cstate *g)
{
 if (g->ncclass >= nelem(g->prog->cclass))
  die(g, "too many character classes");
 g->yycc = g->prog->cclass + g->ncclass++;
 g->yycc->end = g->yycc->spans;
}
