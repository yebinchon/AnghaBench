#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_13__ {scalar_t__ nCacheAlloc; scalar_t__ nCacheMax; TYPE_1__* pLruFirst; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  nPagesize; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * aData; } ;
typedef  TYPE_1__ Page ;
typedef  TYPE_2__ FileSystem ;

/* Variables and functions */
 int LSM_NOMEM_BKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/  PAGE_FREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(
  FileSystem *pFS, 
  Page **ppOut
){
  int rc = LSM_OK;
  Page *pPage = 0;
  if( pFS->pLruFirst==0 || pFS->nCacheAlloc<pFS->nCacheMax ){
    /* Allocate a new Page object */
    pPage = FUNC4(pFS->pEnv, sizeof(Page));
    if( !pPage ){
      rc = LSM_NOMEM_BKPT;
    }else{
      pPage->aData = (u8 *)FUNC3(pFS->pEnv, pFS->nPagesize);
      if( !pPage->aData ){
        FUNC2(pFS->pEnv, pPage);
        rc = LSM_NOMEM_BKPT;
        pPage = 0;
      }else{
        pFS->nCacheAlloc++;
      }
    }
  }else{
    /* Reuse an existing Page object */
    u8 *aData;
    pPage = pFS->pLruFirst;
    aData = pPage->aData;
    FUNC1(pFS, pPage);
    FUNC0(pFS, pPage);

    FUNC5(pPage, 0, sizeof(Page));
    pPage->aData = aData;
  }

  if( pPage ){
    pPage->flags = PAGE_FREE;
  }
  *ppOut = pPage;
  return rc;
}