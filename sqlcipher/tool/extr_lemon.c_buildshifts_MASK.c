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
struct symbol {scalar_t__ type; int nsubsym; struct symbol** subsym; } ;
struct state {int /*<<< orphan*/  ap; struct config* cfp; } ;
struct lemon {int dummy; } ;
struct config {scalar_t__ status; size_t dot; int /*<<< orphan*/  bplp; TYPE_1__* rp; struct config* next; } ;
struct TYPE_2__ {size_t nrhs; struct symbol** rhs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct symbol*,char*) ; 
 scalar_t__ COMPLETE ; 
 struct config* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INCOMPLETE ; 
 scalar_t__ MULTITERMINAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct config*) ; 
 int /*<<< orphan*/  SHIFT ; 
 struct state* FUNC4 (struct lemon*) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol*,struct symbol*) ; 

void FUNC6(struct lemon *lemp, struct state *stp)
{
  struct config *cfp;  /* For looping thru the config closure of "stp" */
  struct config *bcfp; /* For the inner loop on config closure of "stp" */
  struct config *newcfg;  /* */
  struct symbol *sp;   /* Symbol following the dot in configuration "cfp" */
  struct symbol *bsp;  /* Symbol following the dot in configuration "bcfp" */
  struct state *newstp; /* A pointer to a successor state */

  /* Each configuration becomes complete after it contibutes to a successor
  ** state.  Initially, all configurations are incomplete */
  for(cfp=stp->cfp; cfp; cfp=cfp->next) cfp->status = INCOMPLETE;

  /* Loop through all configurations of the state "stp" */
  for(cfp=stp->cfp; cfp; cfp=cfp->next){
    if( cfp->status==COMPLETE ) continue;    /* Already used by inner loop */
    if( cfp->dot>=cfp->rp->nrhs ) continue;  /* Can't shift this config */
    FUNC2();                      /* Reset the new config set */
    sp = cfp->rp->rhs[cfp->dot];             /* Symbol after the dot */

    /* For every configuration in the state "stp" which has the symbol "sp"
    ** following its dot, add the same configuration to the basis set under
    ** construction but with the dot shifted one symbol to the right. */
    for(bcfp=cfp; bcfp; bcfp=bcfp->next){
      if( bcfp->status==COMPLETE ) continue;    /* Already used */
      if( bcfp->dot>=bcfp->rp->nrhs ) continue; /* Can't shift this one */
      bsp = bcfp->rp->rhs[bcfp->dot];           /* Get symbol after dot */
      if( !FUNC5(bsp,sp) ) continue;      /* Must be same as for "cfp" */
      bcfp->status = COMPLETE;                  /* Mark this config as used */
      newcfg = FUNC1(bcfp->rp,bcfp->dot+1);
      FUNC3(&newcfg->bplp,bcfp);
    }

    /* Get a pointer to the state described by the basis configuration set
    ** constructed in the preceding loop */
    newstp = FUNC4(lemp);

    /* The state "newstp" is reached from the state "stp" by a shift action
    ** on the symbol "sp" */
    if( sp->type==MULTITERMINAL ){
      int i;
      for(i=0; i<sp->nsubsym; i++){
        FUNC0(&stp->ap,SHIFT,sp->subsym[i],(char*)newstp);
      }
    }else{
      FUNC0(&stp->ap,SHIFT,sp,(char *)newstp);
    }
  }
}