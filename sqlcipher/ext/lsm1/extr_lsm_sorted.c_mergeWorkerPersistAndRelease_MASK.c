#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pPage; TYPE_1__* aSave; } ;
struct TYPE_4__ {scalar_t__ bStore; int /*<<< orphan*/  iPgno; } ;
typedef  TYPE_2__ MergeWorker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(MergeWorker *pMW){
  int rc;
  int i;

  FUNC0( pMW->pPage || (pMW->aSave[0].bStore==0 && pMW->aSave[1].bStore==0) );

  /* Persist the page */
  rc = FUNC2(pMW->pPage);

  /* If required, save the page number. */
  for(i=0; i<2; i++){
    if( pMW->aSave[i].bStore ){
      pMW->aSave[i].iPgno = FUNC1(pMW->pPage);
      pMW->aSave[i].bStore = 0;
    }
  }

  /* Release the completed output page. */
  FUNC3(pMW->pPage);
  pMW->pPage = 0;
  return rc;
}