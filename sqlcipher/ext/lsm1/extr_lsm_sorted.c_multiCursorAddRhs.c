
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* pLevel; int * pSeg; } ;
struct TYPE_9__ {int nRight; int * aRhs; } ;
struct TYPE_8__ {int nPtr; TYPE_6__* aPtr; TYPE_1__* pDb; } ;
struct TYPE_7__ {int pEnv; } ;
typedef int SegmentPtr ;
typedef TYPE_2__ MultiCursor ;
typedef TYPE_3__ Level ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int assert (int) ;
 TYPE_6__* lsmMallocZero (int ,int) ;

__attribute__((used)) static int multiCursorAddRhs(MultiCursor *pCsr, Level *pLvl){
  int i;
  int nRhs = pLvl->nRight;

  assert( pLvl->nRight>0 );
  assert( pCsr->aPtr==0 );
  pCsr->aPtr = lsmMallocZero(pCsr->pDb->pEnv, sizeof(SegmentPtr) * nRhs);
  if( !pCsr->aPtr ) return LSM_NOMEM_BKPT;
  pCsr->nPtr = nRhs;

  for(i=0; i<nRhs; i++){
    pCsr->aPtr[i].pSeg = &pLvl->aRhs[i];
    pCsr->aPtr[i].pLevel = pLvl;
  }

  return LSM_OK;
}
