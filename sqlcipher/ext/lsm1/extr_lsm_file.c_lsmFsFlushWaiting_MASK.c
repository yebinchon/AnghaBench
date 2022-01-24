#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* pWaiting; } ;
struct TYPE_6__ {int nRef; struct TYPE_6__* pWaitingNext; } ;
typedef  TYPE_1__ Page ;
typedef  TYPE_2__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(FileSystem *pFS, int *pRc){
  int rc = *pRc;
  Page *pPg;

  pPg = pFS->pWaiting;
  pFS->pWaiting = 0;

  while( pPg ){
    Page *pNext = pPg->pWaitingNext;
    if( rc==LSM_OK ) rc = FUNC1(pPg);
    FUNC0( pPg->nRef==1 );
    FUNC2(pPg);
    pPg = pNext;
  }
  *pRc = rc;
}