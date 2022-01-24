#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_31__ {int /*<<< orphan*/  nKey; } ;
struct TYPE_36__ {int curFlags; scalar_t__ pKeyInfo; scalar_t__ eState; int iPage; int ix; int skipNext; TYPE_2__* pPage; TYPE_2__** apPage; TYPE_1__ info; int /*<<< orphan*/  pgnoRoot; TYPE_4__* pBtree; } ;
struct TYPE_35__ {scalar_t__ inTransaction; int btsFlags; int usableSize; unsigned char* pTmpSpace; } ;
struct TYPE_34__ {TYPE_5__* pBt; } ;
struct TYPE_33__ {int nSize; } ;
struct TYPE_32__ {int nFree; int nCell; unsigned char* aData; int (* xCellSize ) (TYPE_2__*,unsigned char*) ;int /*<<< orphan*/  pDbPage; int /*<<< orphan*/  pgno; int /*<<< orphan*/  leaf; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ CellInfo ;
typedef  TYPE_4__ Btree ;
typedef  TYPE_5__ BtShared ;
typedef  TYPE_6__ BtCursor ;

/* Variables and functions */
 int BTCF_Multiple ; 
 int BTCF_WriteFlag ; 
 int BTREE_AUXDELETE ; 
 int BTREE_SAVEPOSITION ; 
 int BTS_READ_ONLY ; 
 scalar_t__ CORRUPT_DB ; 
 scalar_t__ CURSOR_REQUIRESEEK ; 
 scalar_t__ CURSOR_SKIPNEXT ; 
 scalar_t__ CURSOR_VALID ; 
 int FUNC0 (TYPE_5__*) ; 
 int SQLITE_CORRUPT ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_DONE ; 
 int SQLITE_EMPTY ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_6__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int FUNC5 (TYPE_6__*) ; 
 int FUNC6 (TYPE_2__*,unsigned char*) ; 
 int FUNC7 (TYPE_2__*,unsigned char*,TYPE_3__*) ; 
 int FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int,int*) ; 
 unsigned char* FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,unsigned char*,int,unsigned char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC19 (TYPE_6__*) ; 
 int FUNC20 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (TYPE_2__*,unsigned char*) ; 

int FUNC23(BtCursor *pCur, u8 flags){
  Btree *p = pCur->pBtree;
  BtShared *pBt = p->pBt;              
  int rc;                              /* Return code */
  MemPage *pPage;                      /* Page to delete cell from */
  unsigned char *pCell;                /* Pointer to cell to delete */
  int iCellIdx;                        /* Index of cell to delete */
  int iCellDepth;                      /* Depth of node containing pCell */ 
  CellInfo info;                       /* Size of the cell being deleted */
  int bSkipnext = 0;                   /* Leaf cursor in SKIPNEXT state */
  u8 bPreserve = flags & BTREE_SAVEPOSITION;  /* Keep cursor valid */

  FUNC1( FUNC8(pCur) );
  FUNC1( pBt->inTransaction==TRANS_WRITE );
  FUNC1( (pBt->btsFlags & BTS_READ_ONLY)==0 );
  FUNC1( pCur->curFlags & BTCF_WriteFlag );
  FUNC1( FUNC12(p, pCur->pgnoRoot, pCur->pKeyInfo!=0, 2) );
  FUNC1( !FUNC11(p, pCur->pgnoRoot) );
  FUNC1( (flags & ~(BTREE_SAVEPOSITION | BTREE_AUXDELETE))==0 );
  if( pCur->eState==CURSOR_REQUIRESEEK ){
    rc = FUNC5(pCur);
    if( rc ) return rc;
  }
  FUNC1( pCur->eState==CURSOR_VALID );

  iCellDepth = pCur->iPage;
  iCellIdx = pCur->ix;
  pPage = pCur->pPage;
  pCell = FUNC10(pPage, iCellIdx);
  if( pPage->nFree<0 && FUNC3(pPage) ) return SQLITE_CORRUPT;

  /* If the bPreserve flag is set to true, then the cursor position must
  ** be preserved following this delete operation. If the current delete
  ** will cause a b-tree rebalance, then this is done by saving the cursor
  ** key and leaving the cursor in CURSOR_REQUIRESEEK state before 
  ** returning. 
  **
  ** Or, if the current delete will not cause a rebalance, then the cursor
  ** will be left in CURSOR_SKIPNEXT state pointing to the entry immediately
  ** before or after the deleted entry. In this case set bSkipnext to true.  */
  if( bPreserve ){
    if( !pPage->leaf 
     || (pPage->nFree+FUNC6(pPage,pCell)+2)>(int)(pBt->usableSize*2/3)
     || pPage->nCell==1  /* See dbfuzz001.test for a test case */
    ){
      /* A b-tree rebalance will be required after deleting this entry.
      ** Save the cursor key.  */
      rc = FUNC19(pCur);
      if( rc ) return rc;
    }else{
      bSkipnext = 1;
    }
  }

  /* If the page containing the entry to delete is not a leaf page, move
  ** the cursor to the largest entry in the tree that is smaller than
  ** the entry being deleted. This cell will replace the cell being deleted
  ** from the internal node. The 'previous' entry is used for this instead
  ** of the 'next' entry, as the previous entry is always a part of the
  ** sub-tree headed by the child page of the cell being deleted. This makes
  ** balancing the tree following the delete operation easier.  */
  if( !pPage->leaf ){
    rc = FUNC20(pCur, 0);
    FUNC1( rc!=SQLITE_DONE );
    if( rc ) return rc;
  }

  /* Save the positions of any other cursors open on this table before
  ** making any modifications.  */
  if( pCur->curFlags & BTCF_Multiple ){
    rc = FUNC18(pBt, pCur->pgnoRoot, pCur);
    if( rc ) return rc;
  }

  /* If this is a delete operation to remove a row from a table b-tree,
  ** invalidate any incrblob cursors open on the row being deleted.  */
  if( pCur->pKeyInfo==0 ){
    FUNC14(p, pCur->pgnoRoot, pCur->info.nKey, 0);
  }

  /* Make the page containing the entry to be deleted writable. Then free any
  ** overflow pages associated with the entry and finally remove the cell
  ** itself from within the page.  */
  rc = FUNC21(pPage->pDbPage);
  if( rc ) return rc;
  rc = FUNC7(pPage, pCell, &info);
  FUNC9(pPage, iCellIdx, info.nSize, &rc);
  if( rc ) return rc;

  /* If the cell deleted was not located on a leaf page, then the cursor
  ** is currently pointing to the largest entry in the sub-tree headed
  ** by the child-page of the cell that was just deleted from an internal
  ** node. The cell from the leaf node needs to be moved to the internal
  ** node to replace the deleted cell.  */
  if( !pPage->leaf ){
    MemPage *pLeaf = pCur->pPage;
    int nCell;
    Pgno n;
    unsigned char *pTmp;

    if( pLeaf->nFree<0 ){
      rc = FUNC3(pLeaf);
      if( rc ) return rc;
    }
    if( iCellDepth<pCur->iPage-1 ){
      n = pCur->apPage[iCellDepth+1]->pgno;
    }else{
      n = pCur->pPage->pgno;
    }
    pCell = FUNC10(pLeaf, pLeaf->nCell-1);
    if( pCell<&pLeaf->aData[4] ) return SQLITE_CORRUPT_BKPT;
    nCell = pLeaf->xCellSize(pLeaf, pCell);
    FUNC1( FUNC0(pBt) >= nCell );
    pTmp = pBt->pTmpSpace;
    FUNC1( pTmp!=0 );
    rc = FUNC21(pLeaf->pDbPage);
    if( rc==SQLITE_OK ){
      FUNC13(pPage, iCellIdx, pCell-4, nCell+4, pTmp, n, &rc);
    }
    FUNC9(pLeaf, pLeaf->nCell-1, nCell, &rc);
    if( rc ) return rc;
  }

  /* Balance the tree. If the entry deleted was located on a leaf page,
  ** then the cursor still points to that page. In this case the first
  ** call to balance() repairs the tree, and the if(...) condition is
  ** never true.
  **
  ** Otherwise, if the entry deleted was on an internal node page, then
  ** pCur is pointing to the leaf page from which a cell was removed to
  ** replace the cell deleted from the internal node. This is slightly
  ** tricky as the leaf node may be underfull, and the internal node may
  ** be either under or overfull. In this case run the balancing algorithm
  ** on the leaf node first. If the balance proceeds far enough up the
  ** tree that we can be sure that any problem in the internal node has
  ** been corrected, so be it. Otherwise, after balancing the leaf node,
  ** walk the cursor up the tree to the internal node and balance it as 
  ** well.  */
  rc = FUNC2(pCur);
  if( rc==SQLITE_OK && pCur->iPage>iCellDepth ){
    FUNC17(pCur->pPage);
    pCur->iPage--;
    while( pCur->iPage>iCellDepth ){
      FUNC16(pCur->apPage[pCur->iPage--]);
    }
    pCur->pPage = pCur->apPage[pCur->iPage];
    rc = FUNC2(pCur);
  }

  if( rc==SQLITE_OK ){
    if( bSkipnext ){
      FUNC1( bPreserve && (pCur->iPage==iCellDepth || CORRUPT_DB) );
      FUNC1( pPage==pCur->pPage || CORRUPT_DB );
      FUNC1( (pPage->nCell>0 || CORRUPT_DB) && iCellIdx<=pPage->nCell );
      pCur->eState = CURSOR_SKIPNEXT;
      if( iCellIdx>=pPage->nCell ){
        pCur->skipNext = -1;
        pCur->ix = pPage->nCell-1;
      }else{
        pCur->skipNext = 1;
      }
    }else{
      rc = FUNC15(pCur);
      if( bPreserve ){
        FUNC4(pCur);
        pCur->eState = CURSOR_REQUIRESEEK;
      }
      if( rc==SQLITE_EMPTY ) rc = SQLITE_OK;
    }
  }
  return rc;
}