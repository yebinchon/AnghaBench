#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int i64 ;
struct TYPE_24__ {scalar_t__ iDepth; int /*<<< orphan*/  nNodeRef; TYPE_1__* pDeleted; int /*<<< orphan*/  pDeleteRowid; } ;
struct TYPE_23__ {int isDirty; struct TYPE_23__* pNext; int /*<<< orphan*/  zData; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int FUNC0 (TYPE_1__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int,TYPE_1__*,TYPE_1__**) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC9 (TYPE_2__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC15(Rtree *pRtree, sqlite3_int64 iDelete){
  int rc;                         /* Return code */
  RtreeNode *pLeaf = 0;           /* Leaf node containing record iDelete */
  int iCell;                      /* Index of iDelete cell in pLeaf */
  RtreeNode *pRoot = 0;           /* Root node of rtree structure */


  /* Obtain a reference to the root node to initialize Rtree.iDepth */
  rc = FUNC4(pRtree, 1, 0, &pRoot);

  /* Obtain a reference to the leaf node that contains the entry 
  ** about to be deleted. 
  */
  if( rc==SQLITE_OK ){
    rc = FUNC3(pRtree, iDelete, &pLeaf, 0);
  }

#ifdef CORRUPT_DB
  assert( pLeaf!=0 || rc!=SQLITE_OK || CORRUPT_DB );
#endif

  /* Delete the cell in question from the leaf node. */
  if( rc==SQLITE_OK && pLeaf ){
    int rc2;
    rc = FUNC7(pRtree, pLeaf, iDelete, &iCell);
    if( rc==SQLITE_OK ){
      rc = FUNC2(pRtree, pLeaf, iCell, 0);
    }
    rc2 = FUNC6(pRtree, pLeaf);
    if( rc==SQLITE_OK ){
      rc = rc2;
    }
  }

  /* Delete the corresponding entry in the <rtree>_rowid table. */
  if( rc==SQLITE_OK ){
    FUNC10(pRtree->pDeleteRowid, 1, iDelete);
    FUNC13(pRtree->pDeleteRowid);
    rc = FUNC12(pRtree->pDeleteRowid);
  }

  /* Check if the root node now has exactly one child. If so, remove
  ** it, schedule the contents of the child for reinsertion and 
  ** reduce the tree height by one.
  **
  ** This is equivalent to copying the contents of the child into
  ** the root node (the operation that Gutman's paper says to perform 
  ** in this scenario).
  */
  if( rc==SQLITE_OK && pRtree->iDepth>0 && FUNC0(pRoot)==1 ){
    int rc2;
    RtreeNode *pChild = 0;
    i64 iChild = FUNC5(pRtree, pRoot, 0);
    rc = FUNC4(pRtree, iChild, pRoot, &pChild);
    if( rc==SQLITE_OK ){
      rc = FUNC9(pRtree, pChild, pRtree->iDepth-1);
    }
    rc2 = FUNC6(pRtree, pChild);
    if( rc==SQLITE_OK ) rc = rc2;
    if( rc==SQLITE_OK ){
      pRtree->iDepth--;
      FUNC14(pRoot->zData, pRtree->iDepth);
      pRoot->isDirty = 1;
    }
  }

  /* Re-insert the contents of any underfull nodes removed from the tree. */
  for(pLeaf=pRtree->pDeleted; pLeaf; pLeaf=pRtree->pDeleted){
    if( rc==SQLITE_OK ){
      rc = FUNC8(pRtree, pLeaf);
    }
    pRtree->pDeleted = pLeaf->pNext;
    pRtree->nNodeRef--;
    FUNC11(pLeaf);
  }

  /* Release the reference to the root node. */
  if( rc==SQLITE_OK ){
    rc = FUNC6(pRtree, pRoot);
  }else{
    FUNC6(pRtree, pRoot);
  }

  return rc;
}