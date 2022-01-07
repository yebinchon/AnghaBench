
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nRight; scalar_t__ pSplitKey; int * aRhs; int lhs; } ;
struct TYPE_8__ {int nPtr; int pDb; TYPE_1__* aPtr; } ;
struct TYPE_7__ {int * pSeg; TYPE_3__* pLevel; } ;
typedef TYPE_2__ MultiCursor ;
typedef TYPE_3__ Level ;


 int LSM_OK ;
 int sortedSplitkey (int ,TYPE_3__*,int*) ;

__attribute__((used)) static void multiCursorAddOne(MultiCursor *pCsr, Level *pLvl, int *pRc){
  if( *pRc==LSM_OK ){
    int iPtr = pCsr->nPtr;
    int i;
    pCsr->aPtr[iPtr].pLevel = pLvl;
    pCsr->aPtr[iPtr].pSeg = &pLvl->lhs;
    iPtr++;
    for(i=0; i<pLvl->nRight; i++){
      pCsr->aPtr[iPtr].pLevel = pLvl;
      pCsr->aPtr[iPtr].pSeg = &pLvl->aRhs[i];
      iPtr++;
    }

    if( pLvl->nRight && pLvl->pSplitKey==0 ){
      sortedSplitkey(pCsr->pDb, pLvl, pRc);
    }
    pCsr->nPtr = iPtr;
  }
}
