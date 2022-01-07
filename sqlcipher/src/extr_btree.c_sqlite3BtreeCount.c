
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_9__ {int ix; scalar_t__ iPage; TYPE_1__* pPage; } ;
struct TYPE_8__ {int nCell; int hdrOffset; int * aData; scalar_t__ leaf; int intKey; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtCursor ;


 int SQLITE_EMPTY ;
 int SQLITE_OK ;
 int * findCell (TYPE_1__*,int) ;
 int get4byte (int *) ;
 int moveToChild (TYPE_2__*,int ) ;
 int moveToParent (TYPE_2__*) ;
 int moveToRoot (TYPE_2__*) ;

int sqlite3BtreeCount(BtCursor *pCur, i64 *pnEntry){
  i64 nEntry = 0;
  int rc;

  rc = moveToRoot(pCur);
  if( rc==SQLITE_EMPTY ){
    *pnEntry = 0;
    return SQLITE_OK;
  }




  while( rc==SQLITE_OK ){
    int iIdx;
    MemPage *pPage;





    pPage = pCur->pPage;
    if( pPage->leaf || !pPage->intKey ){
      nEntry += pPage->nCell;
    }
    if( pPage->leaf ){
      do {
        if( pCur->iPage==0 ){

          *pnEntry = nEntry;
          return moveToRoot(pCur);
        }
        moveToParent(pCur);
      }while ( pCur->ix>=pCur->pPage->nCell );

      pCur->ix++;
      pPage = pCur->pPage;
    }




    iIdx = pCur->ix;
    if( iIdx==pPage->nCell ){
      rc = moveToChild(pCur, get4byte(&pPage->aData[pPage->hdrOffset+8]));
    }else{
      rc = moveToChild(pCur, get4byte(findCell(pPage, iIdx)));
    }
  }


  return rc;
}
