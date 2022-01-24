#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* pDeleted; int /*<<< orphan*/  pDeleteParent; int /*<<< orphan*/  pDeleteNode; } ;
struct TYPE_13__ {int nRef; int iNode; struct TYPE_13__* pNext; struct TYPE_13__* pParent; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,int*) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(Rtree *pRtree, RtreeNode *pNode, int iHeight){
  int rc;
  int rc2;
  RtreeNode *pParent = 0;
  int iCell;

  FUNC0( pNode->nRef==1 );

  /* Remove the entry in the parent cell. */
  rc = FUNC3(pRtree, pNode, &iCell);
  if( rc==SQLITE_OK ){
    pParent = pNode->pParent;
    pNode->pParent = 0;
    rc = FUNC1(pRtree, pParent, iCell, iHeight+1);
  }
  rc2 = FUNC4(pRtree, pParent);
  if( rc==SQLITE_OK ){
    rc = rc2;
  }
  if( rc!=SQLITE_OK ){
    return rc;
  }

  /* Remove the xxx_node entry. */
  FUNC5(pRtree->pDeleteNode, 1, pNode->iNode);
  FUNC7(pRtree->pDeleteNode);
  if( SQLITE_OK!=(rc = FUNC6(pRtree->pDeleteNode)) ){
    return rc;
  }

  /* Remove the xxx_parent entry. */
  FUNC5(pRtree->pDeleteParent, 1, pNode->iNode);
  FUNC7(pRtree->pDeleteParent);
  if( SQLITE_OK!=(rc = FUNC6(pRtree->pDeleteParent)) ){
    return rc;
  }
  
  /* Remove the node from the in-memory hash table and link it into
  ** the Rtree.pDeleted list. Its contents will be re-inserted later on.
  */
  FUNC2(pRtree, pNode);
  pNode->iNode = iHeight;
  pNode->pNext = pRtree->pDeleted;
  pNode->nRef++;
  pRtree->pDeleted = pNode;

  return SQLITE_OK;
}