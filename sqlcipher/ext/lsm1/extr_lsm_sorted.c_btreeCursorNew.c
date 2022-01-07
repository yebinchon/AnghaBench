
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pFS; int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_10__ {int iPg; TYPE_2__* pSeg; int pFS; } ;
struct TYPE_9__ {int iRoot; } ;
typedef TYPE_2__ Segment ;
typedef TYPE_3__ BtreeCursor ;


 int LSM_OK ;
 int assert (int ) ;
 TYPE_3__* lsmMallocZeroRc (int ,int,int*) ;

__attribute__((used)) static int btreeCursorNew(
  lsm_db *pDb,
  Segment *pSeg,
  BtreeCursor **ppCsr
){
  int rc = LSM_OK;
  BtreeCursor *pCsr;

  assert( pSeg->iRoot );
  pCsr = lsmMallocZeroRc(pDb->pEnv, sizeof(BtreeCursor), &rc);
  if( pCsr ){
    pCsr->pFS = pDb->pFS;
    pCsr->pSeg = pSeg;
    pCsr->iPg = -1;
  }

  *ppCsr = pCsr;
  return rc;
}
