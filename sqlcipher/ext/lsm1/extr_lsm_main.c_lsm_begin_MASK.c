#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nTransOpen; int nTransAlloc; TYPE_2__* aTrans; int /*<<< orphan*/  pEnv; scalar_t__ bReadonly; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_11__ {int /*<<< orphan*/  log; int /*<<< orphan*/  tree; } ;
typedef  TYPE_2__ TransMark ;

/* Variables and functions */
 int LSM_NOMEM ; 
 int LSM_OK ; 
 int LSM_READONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int FUNC6(lsm_db *pDb, int iLevel){
  int rc;

  FUNC0( pDb );
  rc = (pDb->bReadonly ? LSM_READONLY : LSM_OK);

  /* A value less than zero means open one more transaction. */
  if( iLevel<0 ) iLevel = pDb->nTransOpen + 1;
  if( iLevel>pDb->nTransOpen ){
    int i;

    /* Extend the pDb->aTrans[] array if required. */
    if( rc==LSM_OK && pDb->nTransAlloc<iLevel ){
      TransMark *aNew;            /* New allocation */
      int nByte = sizeof(TransMark) * (iLevel+1);
      aNew = (TransMark *)FUNC3(pDb->pEnv, pDb->aTrans, nByte);
      if( !aNew ){
        rc = LSM_NOMEM;
      }else{
        nByte = sizeof(TransMark) * (iLevel+1 - pDb->nTransAlloc);
        FUNC5(&aNew[pDb->nTransAlloc], 0, nByte);
        pDb->nTransAlloc = iLevel+1;
        pDb->aTrans = aNew;
      }
    }

    if( rc==LSM_OK && pDb->nTransOpen==0 ){
      rc = FUNC1(pDb);
    }

    if( rc==LSM_OK ){
      for(i=pDb->nTransOpen; i<iLevel; i++){
        FUNC4(pDb, &pDb->aTrans[i].tree);
        FUNC2(pDb, &pDb->aTrans[i].log);
      }
      pDb->nTransOpen = iLevel;
    }
  }

  return rc;
}