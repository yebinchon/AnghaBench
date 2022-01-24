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
struct config {scalar_t__ fplp; scalar_t__ bplp; scalar_t__ fws; struct config* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct config*) ; 

void FUNC3(struct config *cfp)
{
  struct config *nextcfp;
  for(; cfp; cfp=nextcfp){
    nextcfp = cfp->next;
    FUNC1( cfp->fplp==0 );
    FUNC1( cfp->bplp==0 );
    if( cfp->fws ) FUNC0(cfp->fws);
    FUNC2(cfp);
  }
  return;
}