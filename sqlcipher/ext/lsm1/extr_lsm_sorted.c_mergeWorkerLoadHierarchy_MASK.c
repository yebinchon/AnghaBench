#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_15__ {scalar_t__ apHier; int nHier; } ;
struct TYPE_14__ {TYPE_3__* aSave; TYPE_2__* pDb; TYPE_6__ hier; TYPE_1__* pLevel; } ;
struct TYPE_13__ {scalar_t__ iRoot; } ;
struct TYPE_12__ {scalar_t__ iPgno; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pEnv; int /*<<< orphan*/ * pFS; } ;
struct TYPE_10__ {TYPE_4__ lhs; } ;
typedef  TYPE_4__ Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_5__ MergeWorker ;
typedef  TYPE_6__ Hierarchy ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int LSM_NOMEM_BKPT ; 
 int LSM_OK ; 
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(MergeWorker *pMW){
  int rc = LSM_OK;
  Segment *pSeg;
  Hierarchy *p;
 
  pSeg = &pMW->pLevel->lhs;
  p = &pMW->hier;

  if( p->apHier==0 && pSeg->iRoot!=0 ){
    FileSystem *pFS = pMW->pDb->pFS;
    lsm_env *pEnv = pMW->pDb->pEnv;
    Page **apHier = 0;
    int nHier = 0;
    int iPg = (int)pSeg->iRoot;

    do {
      Page *pPg = 0;
      u8 *aData;
      int nData;
      int flags;

      rc = FUNC2(pFS, pSeg, iPg, &pPg);
      if( rc!=LSM_OK ) break;

      aData = FUNC0(pPg, &nData);
      flags = FUNC7(aData, nData);
      if( flags&SEGMENT_BTREE_FLAG ){
        Page **apNew = (Page **)FUNC4(
            pEnv, apHier, sizeof(Page *)*(nHier+1)
        );
        if( apNew==0 ){
          rc = LSM_NOMEM_BKPT;
          break;
        }
        apHier = apNew;
        FUNC5(&apHier[1], &apHier[0], sizeof(Page *) * nHier);
        nHier++;

        apHier[0] = pPg;
        iPg = (int)FUNC8(aData, nData);
      }else{
        FUNC3(pPg);
        break;
      }
    }while( 1 );

    if( rc==LSM_OK ){
      u8 *aData;
      int nData;
      aData = FUNC0(apHier[0], &nData);
      pMW->aSave[0].iPgno = FUNC8(aData, nData);
      p->nHier = nHier;
      p->apHier = apHier;
      rc = FUNC6(pMW, 0);
    }else{
      int i;
      for(i=0; i<nHier; i++){
        FUNC3(apHier[i]);
      }
      FUNC1(pEnv, apHier);
    }
  }

  return rc;
}