#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_9__ {int ix; scalar_t__ iPage; TYPE_1__* pPage; } ;
struct TYPE_8__ {int nCell; int hdrOffset; int /*<<< orphan*/ * aData; scalar_t__ leaf; int /*<<< orphan*/  intKey; } ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtCursor ;

/* Variables and functions */
 int SQLITE_EMPTY ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 

int FUNC5(BtCursor *pCur, i64 *pnEntry){
  i64 nEntry = 0;                      /* Value to return in *pnEntry */
  int rc;                              /* Return code */

  rc = FUNC4(pCur);
  if( rc==SQLITE_EMPTY ){
    *pnEntry = 0;
    return SQLITE_OK;
  }

  /* Unless an error occurs, the following loop runs one iteration for each
  ** page in the B-Tree structure (not including overflow pages). 
  */
  while( rc==SQLITE_OK ){
    int iIdx;                          /* Index of child node in parent */
    MemPage *pPage;                    /* Current page of the b-tree */

    /* If this is a leaf page or the tree is not an int-key tree, then 
    ** this page contains countable entries. Increment the entry counter
    ** accordingly.
    */
    pPage = pCur->pPage;
    if( pPage->leaf || !pPage->intKey ){
      nEntry += pPage->nCell;
    }

    /* pPage is a leaf node. This loop navigates the cursor so that it 
    ** points to the first interior cell that it points to the parent of
    ** the next page in the tree that has not yet been visited. The
    ** pCur->aiIdx[pCur->iPage] value is set to the index of the parent cell
    ** of the page, or to the number of cells in the page if the next page
    ** to visit is the right-child of its parent.
    **
    ** If all pages in the tree have been visited, return SQLITE_OK to the
    ** caller.
    */
    if( pPage->leaf ){
      do {
        if( pCur->iPage==0 ){
          /* All pages of the b-tree have been visited. Return successfully. */
          *pnEntry = nEntry;
          return FUNC4(pCur);
        }
        FUNC3(pCur);
      }while ( pCur->ix>=pCur->pPage->nCell );

      pCur->ix++;
      pPage = pCur->pPage;
    }

    /* Descend to the child node of the cell that the cursor currently 
    ** points at. This is the right-child if (iIdx==pPage->nCell).
    */
    iIdx = pCur->ix;
    if( iIdx==pPage->nCell ){
      rc = FUNC2(pCur, FUNC1(&pPage->aData[pPage->hdrOffset+8]));
    }else{
      rc = FUNC2(pCur, FUNC1(FUNC0(pPage, iIdx)));
    }
  }

  /* An error has occurred. Return an error code. */
  return rc;
}