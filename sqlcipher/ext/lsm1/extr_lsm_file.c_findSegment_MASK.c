#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nRight; int /*<<< orphan*/ * aRhs; int /*<<< orphan*/  lhs; struct TYPE_3__* pNext; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  TYPE_1__ Level ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Segment *FUNC2(Snapshot *pWorker, LsmPgno iFirst){
  Level *pLvl;                    /* Used to iterate through db levels */
  Segment *pSeg = 0;              /* Pointer to segment to return */

  for(pLvl=FUNC0(pWorker); pLvl && pSeg==0; pLvl=pLvl->pNext){
    if( 0==(pSeg = FUNC1(&pLvl->lhs, iFirst)) ){
      int i;
      for(i=0; i<pLvl->nRight; i++){
        if( (pSeg = FUNC1(&pLvl->aRhs[i], iFirst)) ) break;
      }
    }
  }

  return pSeg;
}