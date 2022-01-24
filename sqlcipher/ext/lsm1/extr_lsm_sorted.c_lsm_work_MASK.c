#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nMerge; int /*<<< orphan*/  pFS; scalar_t__ pCsr; scalar_t__ nTransOpen; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int i64 ;

/* Variables and functions */
 int LSM_MISUSE_BKPT ; 
 int FUNC0 (TYPE_1__*,int,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(lsm_db *pDb, int nMerge, int nKB, int *pnWrite){
  int rc;                         /* Return code */
  int nPgsz;                      /* Nominal page size in bytes */
  int nPage;                      /* Equivalent of nKB in pages */
  int nWrite = 0;                 /* Number of pages written */

  /* This function may not be called if pDb has an open read or write
  ** transaction. Return LSM_MISUSE if an application attempts this.  */
  if( pDb->nTransOpen || pDb->pCsr ) return LSM_MISUSE_BKPT;
  if( nMerge<=0 ) nMerge = pDb->nMerge;

  FUNC2(pDb->pFS);

  /* Convert from KB to pages */
  nPgsz = FUNC1(pDb->pFS);
  if( nKB>=0 ){
    nPage = ((i64)nKB * 1024 + nPgsz - 1) / nPgsz;
  }else{
    nPage = -1;
  }

  rc = FUNC0(pDb, nMerge, nPage, &nWrite);
  
  if( pnWrite ){
    /* Convert back from pages to KB */
    *pnWrite = (int)(((i64)nWrite * 1024 + nPgsz - 1) / nPgsz);
  }
  return rc;
}