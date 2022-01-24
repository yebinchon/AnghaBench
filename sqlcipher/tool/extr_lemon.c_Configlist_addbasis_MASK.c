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
struct rule {int dummy; } ;
struct config {int dot; struct config* bp; struct config* next; scalar_t__ bplp; scalar_t__ fplp; scalar_t__ stp; int /*<<< orphan*/  fws; struct rule* rp; } ;

/* Variables and functions */
 struct config* FUNC0 (struct config*) ; 
 int /*<<< orphan*/  FUNC1 (struct config*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct config** basisend ; 
 struct config** currentend ; 
 struct config* FUNC4 () ; 

struct config *FUNC5(struct rule *rp, int dot)
{
  struct config *cfp, model;

  FUNC3( basisend!=0 );
  FUNC3( currentend!=0 );
  model.rp = rp;
  model.dot = dot;
  cfp = FUNC0(&model);
  if( cfp==0 ){
    cfp = FUNC4();
    cfp->rp = rp;
    cfp->dot = dot;
    cfp->fws = FUNC2();
    cfp->stp = 0;
    cfp->fplp = cfp->bplp = 0;
    cfp->next = 0;
    cfp->bp = 0;
    *currentend = cfp;
    currentend = &cfp->next;
    *basisend = cfp;
    basisend = &cfp->bp;
    FUNC1(cfp);
  }
  return cfp;
}