
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_31__ {int nKey; } ;
struct TYPE_36__ {int curFlags; scalar_t__ pKeyInfo; scalar_t__ eState; int iPage; int ix; int skipNext; TYPE_2__* pPage; TYPE_2__** apPage; TYPE_1__ info; int pgnoRoot; TYPE_4__* pBtree; } ;
struct TYPE_35__ {scalar_t__ inTransaction; int btsFlags; int usableSize; unsigned char* pTmpSpace; } ;
struct TYPE_34__ {TYPE_5__* pBt; } ;
struct TYPE_33__ {int nSize; } ;
struct TYPE_32__ {int nFree; int nCell; unsigned char* aData; int (* xCellSize ) (TYPE_2__*,unsigned char*) ;int pDbPage; int pgno; int leaf; } ;
typedef int Pgno ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ CellInfo ;
typedef TYPE_4__ Btree ;
typedef TYPE_5__ BtShared ;
typedef TYPE_6__ BtCursor ;


 int BTCF_Multiple ;
 int BTCF_WriteFlag ;
 int BTREE_AUXDELETE ;
 int BTREE_SAVEPOSITION ;
 int BTS_READ_ONLY ;
 scalar_t__ CORRUPT_DB ;
 scalar_t__ CURSOR_REQUIRESEEK ;
 scalar_t__ CURSOR_SKIPNEXT ;
 scalar_t__ CURSOR_VALID ;
 int MX_CELL_SIZE (TYPE_5__*) ;
 int SQLITE_CORRUPT ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_DONE ;
 int SQLITE_EMPTY ;
 int SQLITE_OK ;
 scalar_t__ TRANS_WRITE ;
 int assert (int) ;
 int balance (TYPE_6__*) ;
 int btreeComputeFreeSpace (TYPE_2__*) ;
 int btreeReleaseAllCursorPages (TYPE_6__*) ;
 int btreeRestoreCursorPosition (TYPE_6__*) ;
 int cellSizePtr (TYPE_2__*,unsigned char*) ;
 int clearCell (TYPE_2__*,unsigned char*,TYPE_3__*) ;
 int cursorOwnsBtShared (TYPE_6__*) ;
 int dropCell (TYPE_2__*,int,int,int*) ;
 unsigned char* findCell (TYPE_2__*,int) ;
 int hasReadConflicts (TYPE_4__*,int ) ;
 int hasSharedCacheTableLock (TYPE_4__*,int ,int,int) ;
 int insertCell (TYPE_2__*,int,unsigned char*,int,unsigned char*,int ,int*) ;
 int invalidateIncrblobCursors (TYPE_4__*,int ,int ,int ) ;
 int moveToRoot (TYPE_6__*) ;
 int releasePage (TYPE_2__*) ;
 int releasePageNotNull (TYPE_2__*) ;
 int saveAllCursors (TYPE_5__*,int ,TYPE_6__*) ;
 int saveCursorKey (TYPE_6__*) ;
 int sqlite3BtreePrevious (TYPE_6__*,int ) ;
 int sqlite3PagerWrite (int ) ;
 int stub1 (TYPE_2__*,unsigned char*) ;

int sqlite3BtreeDelete(BtCursor *pCur, u8 flags){
  Btree *p = pCur->pBtree;
  BtShared *pBt = p->pBt;
  int rc;
  MemPage *pPage;
  unsigned char *pCell;
  int iCellIdx;
  int iCellDepth;
  CellInfo info;
  int bSkipnext = 0;
  u8 bPreserve = flags & BTREE_SAVEPOSITION;

  assert( cursorOwnsBtShared(pCur) );
  assert( pBt->inTransaction==TRANS_WRITE );
  assert( (pBt->btsFlags & BTS_READ_ONLY)==0 );
  assert( pCur->curFlags & BTCF_WriteFlag );
  assert( hasSharedCacheTableLock(p, pCur->pgnoRoot, pCur->pKeyInfo!=0, 2) );
  assert( !hasReadConflicts(p, pCur->pgnoRoot) );
  assert( (flags & ~(BTREE_SAVEPOSITION | BTREE_AUXDELETE))==0 );
  if( pCur->eState==CURSOR_REQUIRESEEK ){
    rc = btreeRestoreCursorPosition(pCur);
    if( rc ) return rc;
  }
  assert( pCur->eState==CURSOR_VALID );

  iCellDepth = pCur->iPage;
  iCellIdx = pCur->ix;
  pPage = pCur->pPage;
  pCell = findCell(pPage, iCellIdx);
  if( pPage->nFree<0 && btreeComputeFreeSpace(pPage) ) return SQLITE_CORRUPT;
  if( bPreserve ){
    if( !pPage->leaf
     || (pPage->nFree+cellSizePtr(pPage,pCell)+2)>(int)(pBt->usableSize*2/3)
     || pPage->nCell==1
    ){


      rc = saveCursorKey(pCur);
      if( rc ) return rc;
    }else{
      bSkipnext = 1;
    }
  }
  if( !pPage->leaf ){
    rc = sqlite3BtreePrevious(pCur, 0);
    assert( rc!=SQLITE_DONE );
    if( rc ) return rc;
  }



  if( pCur->curFlags & BTCF_Multiple ){
    rc = saveAllCursors(pBt, pCur->pgnoRoot, pCur);
    if( rc ) return rc;
  }



  if( pCur->pKeyInfo==0 ){
    invalidateIncrblobCursors(p, pCur->pgnoRoot, pCur->info.nKey, 0);
  }




  rc = sqlite3PagerWrite(pPage->pDbPage);
  if( rc ) return rc;
  rc = clearCell(pPage, pCell, &info);
  dropCell(pPage, iCellIdx, info.nSize, &rc);
  if( rc ) return rc;






  if( !pPage->leaf ){
    MemPage *pLeaf = pCur->pPage;
    int nCell;
    Pgno n;
    unsigned char *pTmp;

    if( pLeaf->nFree<0 ){
      rc = btreeComputeFreeSpace(pLeaf);
      if( rc ) return rc;
    }
    if( iCellDepth<pCur->iPage-1 ){
      n = pCur->apPage[iCellDepth+1]->pgno;
    }else{
      n = pCur->pPage->pgno;
    }
    pCell = findCell(pLeaf, pLeaf->nCell-1);
    if( pCell<&pLeaf->aData[4] ) return SQLITE_CORRUPT_BKPT;
    nCell = pLeaf->xCellSize(pLeaf, pCell);
    assert( MX_CELL_SIZE(pBt) >= nCell );
    pTmp = pBt->pTmpSpace;
    assert( pTmp!=0 );
    rc = sqlite3PagerWrite(pLeaf->pDbPage);
    if( rc==SQLITE_OK ){
      insertCell(pPage, iCellIdx, pCell-4, nCell+4, pTmp, n, &rc);
    }
    dropCell(pLeaf, pLeaf->nCell-1, nCell, &rc);
    if( rc ) return rc;
  }
  rc = balance(pCur);
  if( rc==SQLITE_OK && pCur->iPage>iCellDepth ){
    releasePageNotNull(pCur->pPage);
    pCur->iPage--;
    while( pCur->iPage>iCellDepth ){
      releasePage(pCur->apPage[pCur->iPage--]);
    }
    pCur->pPage = pCur->apPage[pCur->iPage];
    rc = balance(pCur);
  }

  if( rc==SQLITE_OK ){
    if( bSkipnext ){
      assert( bPreserve && (pCur->iPage==iCellDepth || CORRUPT_DB) );
      assert( pPage==pCur->pPage || CORRUPT_DB );
      assert( (pPage->nCell>0 || CORRUPT_DB) && iCellIdx<=pPage->nCell );
      pCur->eState = CURSOR_SKIPNEXT;
      if( iCellIdx>=pPage->nCell ){
        pCur->skipNext = -1;
        pCur->ix = pPage->nCell-1;
      }else{
        pCur->skipNext = 1;
      }
    }else{
      rc = moveToRoot(pCur);
      if( bPreserve ){
        btreeReleaseAllCursorPages(pCur);
        pCur->eState = CURSOR_REQUIRESEEK;
      }
      if( rc==SQLITE_EMPTY ) rc = SQLITE_OK;
    }
  }
  return rc;
}
