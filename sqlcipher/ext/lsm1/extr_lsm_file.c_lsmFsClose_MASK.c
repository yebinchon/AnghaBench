#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_5__ {scalar_t__ nOut; int flags; struct TYPE_5__* aOBuffer; struct TYPE_5__* aIBuffer; struct TYPE_5__* apHash; struct TYPE_5__* pLsmFile; scalar_t__ fdLog; int /*<<< orphan*/ * pEnv; scalar_t__ fdDb; struct TYPE_5__* aData; struct TYPE_5__* pFreeNext; struct TYPE_5__* pFree; struct TYPE_5__* pLruNext; struct TYPE_5__* pLruFirst; } ;
typedef  TYPE_1__ Page ;
typedef  TYPE_1__ FileSystem ;

/* Variables and functions */
 int PAGE_FREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC3(FileSystem *pFS){
  if( pFS ){
    Page *pPg;
    lsm_env *pEnv = pFS->pEnv;

    FUNC0( pFS->nOut==0 );
    pPg = pFS->pLruFirst;
    while( pPg ){
      Page *pNext = pPg->pLruNext;
      if( pPg->flags & PAGE_FREE ) FUNC2(pEnv, pPg->aData);
      FUNC2(pEnv, pPg);
      pPg = pNext;
    }

    pPg = pFS->pFree;
    while( pPg ){
      Page *pNext = pPg->pFreeNext;
      if( pPg->flags & PAGE_FREE ) FUNC2(pEnv, pPg->aData);
      FUNC2(pEnv, pPg);
      pPg = pNext;
    }

    if( pFS->fdDb ) FUNC1(pFS->pEnv, pFS->fdDb );
    if( pFS->fdLog ) FUNC1(pFS->pEnv, pFS->fdLog );
    FUNC2(pEnv, pFS->pLsmFile);
    FUNC2(pEnv, pFS->apHash);
    FUNC2(pEnv, pFS->aIBuffer);
    FUNC2(pEnv, pFS->aOBuffer);
    FUNC2(pEnv, pFS);
  }
}