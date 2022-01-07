
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ aTree; int nPtr; scalar_t__ pBtCsr; int nTree; TYPE_1__* pDb; } ;
struct TYPE_4__ {int pEnv; } ;
typedef TYPE_2__ MultiCursor ;


 int CURSOR_DATA_SEGMENT ;
 int LSM_OK ;
 scalar_t__ lsmMallocZeroRc (int ,int,int*) ;

__attribute__((used)) static int multiCursorAllocTree(MultiCursor *pCsr){
  int rc = LSM_OK;
  if( pCsr->aTree==0 ){
    int nByte;
    int nMin;

    nMin = CURSOR_DATA_SEGMENT + pCsr->nPtr + (pCsr->pBtCsr!=0);
    pCsr->nTree = 2;
    while( pCsr->nTree<nMin ){
      pCsr->nTree = pCsr->nTree*2;
    }

    nByte = sizeof(int)*pCsr->nTree*2;
    pCsr->aTree = (int *)lsmMallocZeroRc(pCsr->pDb->pEnv, nByte, &rc);
  }
  return rc;
}
