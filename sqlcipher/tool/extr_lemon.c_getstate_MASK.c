#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct state {struct config* bp; scalar_t__ ap; scalar_t__ statenum; struct config* cfp; } ;
struct lemon {int /*<<< orphan*/  nstate; } ;
struct config {scalar_t__ bplp; scalar_t__ fplp; struct config* bp; } ;

/* Variables and functions */
 struct config* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct lemon*) ; 
 int /*<<< orphan*/  FUNC2 (struct config*) ; 
 struct config* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct state*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct state* FUNC9 (struct config*) ; 
 int /*<<< orphan*/  FUNC10 (struct state*,struct config*) ; 
 struct state* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct lemon*,struct state*) ; 

struct state *FUNC13(struct lemon *lemp)
{
  struct config *cfp, *bp;
  struct state *stp;

  /* Extract the sorted basis of the new state.  The basis was constructed
  ** by prior calls to "Configlist_addbasis()". */
  FUNC5();
  bp = FUNC0();

  /* Get a state with the same basis */
  stp = FUNC9(bp);
  if( stp ){
    /* A state with the same basis already exists!  Copy all the follow-set
    ** propagation links from the state under construction into the
    ** preexisting state, then return a pointer to the preexisting state */
    struct config *x, *y;
    for(x=bp, y=stp->bp; x && y; x=x->bp, y=y->bp){
      FUNC7(&y->bplp,x->bplp);
      FUNC8(x->fplp);
      x->fplp = x->bplp = 0;
    }
    cfp = FUNC3();
    FUNC2(cfp);
  }else{
    /* This really is a new state.  Construct all the details */
    FUNC1(lemp);    /* Compute the configuration closure */
    FUNC4();           /* Sort the configuration closure */
    cfp = FUNC3();   /* Get a pointer to the config list */
    stp = FUNC11();           /* A new state structure */
    FUNC6(stp);
    stp->bp = bp;                /* Remember the configuration basis */
    stp->cfp = cfp;              /* Remember the configuration closure */
    stp->statenum = lemp->nstate++; /* Every state gets a sequence number */
    stp->ap = 0;                 /* No actions, yet. */
    FUNC10(stp,stp->bp);   /* Add to the state table */
    FUNC12(lemp,stp);       /* Recursively compute successor states */
  }
  return stp;
}