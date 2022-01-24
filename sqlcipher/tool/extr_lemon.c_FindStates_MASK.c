#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {struct rule* rule; int /*<<< orphan*/  name; } ;
struct rule {int nrhs; int lhsStart; struct rule* nextlhs; struct symbol** rhs; struct rule* next; } ;
struct lemon {int /*<<< orphan*/  errorcnt; int /*<<< orphan*/  filename; struct rule* rule; TYPE_1__* startRule; scalar_t__ start; } ;
struct config {int /*<<< orphan*/  fws; } ;
struct TYPE_2__ {struct symbol* lhs; } ;

/* Variables and functions */
 struct config* FUNC0 (struct rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct symbol* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct lemon*) ; 

void FUNC6(struct lemon *lemp)
{
  struct symbol *sp;
  struct rule *rp;

  FUNC1();

  /* Find the start symbol */
  if( lemp->start ){
    sp = FUNC4(lemp->start);
    if( sp==0 ){
      FUNC2(lemp->filename,0,
"The specified start symbol \"%s\" is not \
in a nonterminal of the grammar.  \"%s\" will be used as the start \
symbol instead.",lemp->start,lemp->startRule->lhs->name);
      lemp->errorcnt++;
      sp = lemp->startRule->lhs;
    }
  }else{
    sp = lemp->startRule->lhs;
  }

  /* Make sure the start symbol doesn't occur on the right-hand side of
  ** any rule.  Report an error if it does.  (YACC would generate a new
  ** start symbol in this case.) */
  for(rp=lemp->rule; rp; rp=rp->next){
    int i;
    for(i=0; i<rp->nrhs; i++){
      if( rp->rhs[i]==sp ){   /* FIX ME:  Deal with multiterminals */
        FUNC2(lemp->filename,0,
"The start symbol \"%s\" occurs on the \
right-hand side of a rule. This will result in a parser which \
does not work properly.",sp->name);
        lemp->errorcnt++;
      }
    }
  }

  /* The basis configuration set for the first state
  ** is all rules which have the start symbol as their
  ** left-hand side */
  for(rp=sp->rule; rp; rp=rp->nextlhs){
    struct config *newcfp;
    rp->lhsStart = 1;
    newcfp = FUNC0(rp,0);
    FUNC3(newcfp->fws,0);
  }

  /* Compute the first state.  All other states will be
  ** computed automatically during the computation of the first one.
  ** The returned pointer to the first state is not used. */
  (void)FUNC5(lemp);
  return;
}