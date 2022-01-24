#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ nTransOpen; int nTreeLimit; scalar_t__ bAutowork; int /*<<< orphan*/  pFS; } ;
typedef  TYPE_1__ lsm_db ;

/* Variables and functions */
 int LSM_AUTOWORK_QUANT ; 
 int LSM_DELETE ; 
 int LSM_DRANGE ; 
 int FUNC0 (int,int) ; 
 int LSM_OK ; 
 int LSM_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,void*,int,void*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,void*,int,void*,int) ; 
 int FUNC6 (TYPE_1__*,void*,int,void*,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(
  lsm_db *pDb,
  int bDeleteRange,
  const void *pKey, int nKey,     /* Key to write or delete */
  const void *pVal, int nVal      /* Value to write. Or nVal==-1 for a delete */
){
  int rc = LSM_OK;                /* Return code */
  int bCommit = 0;                /* True to commit before returning */

  if( pDb->nTransOpen==0 ){
    bCommit = 1;
    rc = FUNC8(pDb, 1);
  }

  if( rc==LSM_OK ){
    int eType = (bDeleteRange ? LSM_DRANGE : (nVal>=0?LSM_WRITE:LSM_DELETE));
    rc = FUNC2(pDb, eType, (void *)pKey, nKey, (void *)pVal, nVal);
  }

  FUNC4(pDb);

  if( rc==LSM_OK ){
    int pgsz = FUNC1(pDb->pFS);
    int nQuant = LSM_AUTOWORK_QUANT * pgsz;
    int nBefore;
    int nAfter;
    int nDiff;

    if( nQuant>pDb->nTreeLimit ){
      nQuant = FUNC0(pDb->nTreeLimit, pgsz);
    }

    nBefore = FUNC7(pDb);
    if( bDeleteRange ){
      rc = FUNC5(pDb, (void *)pKey, nKey, (void *)pVal, nVal);
    }else{
      rc = FUNC6(pDb, (void *)pKey, nKey, (void *)pVal, nVal);
    }

    nAfter = FUNC7(pDb);
    nDiff = (nAfter/nQuant) - (nBefore/nQuant);
    if( rc==LSM_OK && pDb->bAutowork && nDiff!=0 ){
      rc = FUNC3(pDb, nDiff * LSM_AUTOWORK_QUANT);
    }
  }

  /* If a transaction was opened at the start of this function, commit it. 
  ** Or, if an error has occurred, roll it back.  */
  if( bCommit ){
    if( rc==LSM_OK ){
      rc = FUNC9(pDb, 0);
    }else{
      FUNC10(pDb, 0);
    }
  }

  return rc;
}