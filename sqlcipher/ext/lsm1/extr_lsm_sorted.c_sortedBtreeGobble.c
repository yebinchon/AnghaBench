
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int pEnv; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_13__ {int nData; int pData; } ;
struct TYPE_16__ {TYPE_2__ key; int eType; TYPE_1__* aPtr; } ;
struct TYPE_15__ {scalar_t__ iRoot; } ;
struct TYPE_12__ {TYPE_4__* pSeg; } ;
typedef TYPE_4__ Segment ;
typedef TYPE_5__ MultiCursor ;
typedef scalar_t__ LsmPgno ;


 int LSM_OK ;
 int assert (int) ;
 int lsmFree (int ,scalar_t__*) ;
 int lsmFsGobble (TYPE_3__*,TYPE_4__*,scalar_t__*,int) ;
 scalar_t__* lsmMallocZeroRc (int ,int,int*) ;
 scalar_t__ rtTopic (int ) ;
 int seekInBtree (TYPE_5__*,TYPE_4__*,scalar_t__,int ,int ,scalar_t__*,int ) ;

__attribute__((used)) static int sortedBtreeGobble(
  lsm_db *pDb,
  MultiCursor *pCsr,
  int iGobble
){
  int rc = LSM_OK;
  if( rtTopic(pCsr->eType)==0 ){
    Segment *pSeg = pCsr->aPtr[iGobble].pSeg;
    LsmPgno *aPg;
    int nPg;






    assert( pSeg->iRoot>0 );
    aPg = lsmMallocZeroRc(pDb->pEnv, sizeof(LsmPgno)*32, &rc);
    if( rc==LSM_OK ){
      rc = seekInBtree(pCsr, pSeg,
          rtTopic(pCsr->eType), pCsr->key.pData, pCsr->key.nData, aPg, 0
      );
    }

    if( rc==LSM_OK ){
      for(nPg=0; aPg[nPg]; nPg++);
      lsmFsGobble(pDb, pSeg, aPg, nPg);
    }

    lsmFree(pDb->pEnv, aPg);
  }
  return rc;
}
