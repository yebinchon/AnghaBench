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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__* aSnapshot; int /*<<< orphan*/  pFS; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int /*<<< orphan*/  MetaPage ;

/* Variables and functions */
 size_t CKPT_HDR_NCKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int) ; 

int FUNC6(lsm_db *pDb, int iMeta){
  MetaPage *pPg = 0;
  int rc;

  FUNC0( iMeta==1 || iMeta==2 );
  rc = FUNC3(pDb->pFS, 1, iMeta, &pPg);
  if( rc==LSM_OK ){
    u8 *aData;
    int nData;
    int nCkpt;

    nCkpt = (int)pDb->aSnapshot[CKPT_HDR_NCKPT];
    aData = FUNC2(pPg, &nData);
    FUNC5(aData, pDb->aSnapshot, nCkpt*sizeof(u32));
    FUNC1((u32 *)aData, nCkpt);
    rc = FUNC4(pPg);
  }
      
  return rc;
}