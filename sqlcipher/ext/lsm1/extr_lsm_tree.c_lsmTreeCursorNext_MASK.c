#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  lsm_db ;
struct TYPE_15__ {int nHeight; int /*<<< orphan*/  iTransId; } ;
typedef  TYPE_1__ TreeRoot ;
struct TYPE_16__ {scalar_t__* aiKeyPtr; } ;
typedef  TYPE_2__ TreeNode ;
struct TYPE_17__ {int /*<<< orphan*/  nKey; } ;
typedef  TYPE_3__ TreeKey ;
struct TYPE_19__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {int* aiCell; size_t iNode; TYPE_5__ blob; TYPE_2__** apTreeNode; TYPE_1__* pRoot; int /*<<< orphan*/ * pDb; } ;
typedef  TYPE_4__ TreeCursor ;
typedef  TYPE_5__ TreeBlob ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,TYPE_5__*,int*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC9(TreeCursor *pCsr){
#ifndef NDEBUG
  TreeKey *pK1;
  TreeBlob key1 = {0, 0};
#endif
  lsm_db *pDb = pCsr->pDb;
  TreeRoot *pRoot = pCsr->pRoot;
  const int iLeaf = pRoot->nHeight-1;
  int iCell; 
  int rc = LSM_OK; 
  TreeNode *pNode; 

  /* Restore the cursor position, if required */
  int iRestore = 0;
  FUNC6(pCsr, &iRestore);
  if( iRestore>0 ) return LSM_OK;

  /* Save a pointer to the current key. This is used in an assert() at the
  ** end of this function - to check that the 'next' key really is larger
  ** than the current key. */
#ifndef NDEBUG
  pK1 = FUNC2(pCsr, &key1, &rc);
  if( rc!=LSM_OK ) return rc;
#endif

  FUNC1( FUNC4(pCsr) );
  FUNC1( pCsr->aiCell[pCsr->iNode]<3 );

  pNode = pCsr->apTreeNode[pCsr->iNode];
  iCell = ++pCsr->aiCell[pCsr->iNode];

  /* If the current node is not a leaf, and the current cell has sub-tree
  ** associated with it, descend to the left-most key on the left-most
  ** leaf of the sub-tree.  */
  if( pCsr->iNode<iLeaf && FUNC3(pNode, pRoot->iTransId, iCell) ){
    do {
      u32 iNodePtr;
      pCsr->iNode++;
      iNodePtr = FUNC3(pNode, pRoot->iTransId, iCell);
      pNode = (TreeNode *)FUNC8(pDb, iNodePtr);
      pCsr->apTreeNode[pCsr->iNode] = pNode;
      iCell = pCsr->aiCell[pCsr->iNode] = (pNode->aiKeyPtr[0]==0);
    }while( pCsr->iNode < iLeaf );
  }

  /* Otherwise, the next key is found by following pointer up the tree 
  ** until there is a key immediately to the right of the pointer followed 
  ** to reach the sub-tree containing the current key. */
  else if( iCell>=3 || pNode->aiKeyPtr[iCell]==0 ){
    while( (--pCsr->iNode)>=0 ){
      iCell = pCsr->aiCell[pCsr->iNode];
      if( iCell<3 && pCsr->apTreeNode[pCsr->iNode]->aiKeyPtr[iCell] ) break;
    }
  }

#ifndef NDEBUG
  if( pCsr->iNode>=0 ){
    TreeKey *pK2 = FUNC2(pCsr, &pCsr->blob, &rc);
    FUNC1( rc||FUNC7(FUNC0(pK2),pK2->nKey,FUNC0(pK1),pK1->nKey)>=0 );
  }
  FUNC5(pDb, &key1);
#endif

  return rc;
}