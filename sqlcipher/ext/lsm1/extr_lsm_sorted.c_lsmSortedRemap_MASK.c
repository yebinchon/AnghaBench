#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* pCsr; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_7__ {int /*<<< orphan*/  iCell; } ;
struct TYPE_6__ {int nPtr; TYPE_3__* aPtr; scalar_t__ pBtCsr; struct TYPE_6__* pNext; } ;
typedef  TYPE_2__ MultiCursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC2(lsm_db *pDb){
  MultiCursor *pCsr;
  for(pCsr=pDb->pCsr; pCsr; pCsr=pCsr->pNext){
    int iPtr;
    if( pCsr->pBtCsr ){
      FUNC0(pCsr->pBtCsr);
    }
    for(iPtr=0; iPtr<pCsr->nPtr; iPtr++){
      FUNC1(&pCsr->aPtr[iPtr], pCsr->aPtr[iPtr].iCell);
    }
  }
}