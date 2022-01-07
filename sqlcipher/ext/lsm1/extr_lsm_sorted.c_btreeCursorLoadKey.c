
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int iPg; int eType; int blob; scalar_t__ nKey; scalar_t__ pKey; TYPE_1__* aPg; int pSeg; } ;
struct TYPE_4__ {int iCell; int pPage; } ;
typedef int LsmPgno ;
typedef TYPE_2__ BtreeCursor ;


 int LSM_CORRUPT_BKPT ;
 int LSM_OK ;
 int LSM_SEPARATOR ;
 int pageGetBtreeKey (int ,int ,int,int *,int *,scalar_t__*,scalar_t__*,int *) ;

__attribute__((used)) static int btreeCursorLoadKey(BtreeCursor *pCsr){
  int rc = LSM_OK;
  if( pCsr->iPg<0 ){
    pCsr->pKey = 0;
    pCsr->nKey = 0;
    pCsr->eType = 0;
  }else{
    LsmPgno dummy;
    int iPg = pCsr->iPg;
    int iCell = pCsr->aPg[iPg].iCell;
    while( iCell<0 && (--iPg)>=0 ){
      iCell = pCsr->aPg[iPg].iCell-1;
    }
    if( iPg<0 || iCell<0 ) return LSM_CORRUPT_BKPT;

    rc = pageGetBtreeKey(
        pCsr->pSeg,
        pCsr->aPg[iPg].pPage, iCell,
        &dummy, &pCsr->eType, &pCsr->pKey, &pCsr->nKey, &pCsr->blob
    );
    pCsr->eType |= LSM_SEPARATOR;
  }

  return rc;
}
