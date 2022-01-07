
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * pBtree; int pKey; int aOverflow; struct TYPE_8__* pNext; TYPE_1__* pBt; } ;
struct TYPE_7__ {TYPE_2__* pCursor; } ;
typedef int Btree ;
typedef TYPE_1__ BtShared ;
typedef TYPE_2__ BtCursor ;


 scalar_t__ ALWAYS (TYPE_2__*) ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeReleaseAllCursorPages (TYPE_2__*) ;
 int sqlite3BtreeEnter (int *) ;
 int sqlite3BtreeLeave (int *) ;
 int sqlite3_free (int ) ;
 int unlockBtreeIfUnused (TYPE_1__*) ;

int sqlite3BtreeCloseCursor(BtCursor *pCur){
  Btree *pBtree = pCur->pBtree;
  if( pBtree ){
    BtShared *pBt = pCur->pBt;
    sqlite3BtreeEnter(pBtree);
    assert( pBt->pCursor!=0 );
    if( pBt->pCursor==pCur ){
      pBt->pCursor = pCur->pNext;
    }else{
      BtCursor *pPrev = pBt->pCursor;
      do{
        if( pPrev->pNext==pCur ){
          pPrev->pNext = pCur->pNext;
          break;
        }
        pPrev = pPrev->pNext;
      }while( ALWAYS(pPrev) );
    }
    btreeReleaseAllCursorPages(pCur);
    unlockBtreeIfUnused(pBt);
    sqlite3_free(pCur->aOverflow);
    sqlite3_free(pCur->pKey);
    sqlite3BtreeLeave(pBtree);
    pCur->pBtree = 0;
  }
  return SQLITE_OK;
}
