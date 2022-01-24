#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_3__ ;
typedef  struct TYPE_46__   TYPE_2__ ;
typedef  struct TYPE_45__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_47__ {int iNodeSize; int /*<<< orphan*/  iDepth; } ;
struct TYPE_46__ {scalar_t__ iRowid; } ;
struct TYPE_45__ {int iNode; int isDirty; int* zData; struct TYPE_45__* pParent; int /*<<< orphan*/  nRef; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  TYPE_2__ RtreeCell ;
typedef  TYPE_3__ Rtree ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_1__*,TYPE_2__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_1__*,int,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC6 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC8 (TYPE_3__*,TYPE_1__*,int*) ; 
 int FUNC9 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC10 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC12 (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ; 
 int FUNC13 (TYPE_3__*,TYPE_2__*,int,TYPE_1__*,TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 TYPE_2__* FUNC15 (int) ; 
 int FUNC16 (TYPE_3__*,scalar_t__,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(
  Rtree *pRtree,
  RtreeNode *pNode,
  RtreeCell *pCell,
  int iHeight
){
  int i;
  int newCellIsRight = 0;

  int rc = SQLITE_OK;
  int nCell = FUNC1(pNode);
  RtreeCell *aCell;
  int *aiUsed;

  RtreeNode *pLeft = 0;
  RtreeNode *pRight = 0;

  RtreeCell leftbbox;
  RtreeCell rightbbox;

  /* Allocate an array and populate it with a copy of pCell and 
  ** all cells from node pLeft. Then zero the original node.
  */
  aCell = FUNC15((sizeof(RtreeCell)+sizeof(int))*(nCell+1));
  if( !aCell ){
    rc = SQLITE_NOMEM;
    goto splitnode_out;
  }
  aiUsed = (int *)&aCell[nCell+1];
  FUNC3(aiUsed, 0, sizeof(int)*(nCell+1));
  for(i=0; i<nCell; i++){
    FUNC4(pRtree, pNode, i, &aCell[i]);
  }
  FUNC11(pRtree, pNode);
  FUNC2(&aCell[nCell], pCell, sizeof(RtreeCell));
  nCell++;

  if( pNode->iNode==1 ){
    pRight = FUNC6(pRtree, pNode);
    pLeft = FUNC6(pRtree, pNode);
    pRtree->iDepth++;
    pNode->isDirty = 1;
    FUNC17(pNode->zData, pRtree->iDepth);
  }else{
    pLeft = pNode;
    pRight = FUNC6(pRtree, pLeft->pParent);
    pLeft->nRef++;
  }

  if( !pLeft || !pRight ){
    rc = SQLITE_NOMEM;
    goto splitnode_out;
  }

  FUNC3(pLeft->zData, 0, pRtree->iNodeSize);
  FUNC3(pRight->zData, 0, pRtree->iNodeSize);

  rc = FUNC13(pRtree, aCell, nCell, pLeft, pRight,
                         &leftbbox, &rightbbox);
  if( rc!=SQLITE_OK ){
    goto splitnode_out;
  }

  /* Ensure both child nodes have node numbers assigned to them by calling
  ** nodeWrite(). Node pRight always needs a node number, as it was created
  ** by nodeNew() above. But node pLeft sometimes already has a node number.
  ** In this case avoid the all to nodeWrite().
  */
  if( SQLITE_OK!=(rc = FUNC10(pRtree, pRight))
   || (0==pLeft->iNode && SQLITE_OK!=(rc = FUNC10(pRtree, pLeft)))
  ){
    goto splitnode_out;
  }

  rightbbox.iRowid = pRight->iNode;
  leftbbox.iRowid = pLeft->iNode;

  if( pNode->iNode==1 ){
    rc = FUNC12(pRtree, pLeft->pParent, &leftbbox, iHeight+1);
    if( rc!=SQLITE_OK ){
      goto splitnode_out;
    }
  }else{
    RtreeNode *pParent = pLeft->pParent;
    int iCell;
    rc = FUNC8(pRtree, pLeft, &iCell);
    if( rc==SQLITE_OK ){
      FUNC7(pRtree, pParent, &leftbbox, iCell);
      rc = FUNC0(pRtree, pParent, &leftbbox);
    }
    if( rc!=SQLITE_OK ){
      goto splitnode_out;
    }
  }
  if( (rc = FUNC12(pRtree, pRight->pParent, &rightbbox, iHeight+1)) ){
    goto splitnode_out;
  }

  for(i=0; i<FUNC1(pRight); i++){
    i64 iRowid = FUNC5(pRtree, pRight, i);
    rc = FUNC16(pRtree, iRowid, pRight, iHeight);
    if( iRowid==pCell->iRowid ){
      newCellIsRight = 1;
    }
    if( rc!=SQLITE_OK ){
      goto splitnode_out;
    }
  }
  if( pNode->iNode==1 ){
    for(i=0; i<FUNC1(pLeft); i++){
      i64 iRowid = FUNC5(pRtree, pLeft, i);
      rc = FUNC16(pRtree, iRowid, pLeft, iHeight);
      if( rc!=SQLITE_OK ){
        goto splitnode_out;
      }
    }
  }else if( newCellIsRight==0 ){
    rc = FUNC16(pRtree, pCell->iRowid, pLeft, iHeight);
  }

  if( rc==SQLITE_OK ){
    rc = FUNC9(pRtree, pRight);
    pRight = 0;
  }
  if( rc==SQLITE_OK ){
    rc = FUNC9(pRtree, pLeft);
    pLeft = 0;
  }

splitnode_out:
  FUNC9(pRtree, pRight);
  FUNC9(pRtree, pLeft);
  FUNC14(aCell);
  return rc;
}