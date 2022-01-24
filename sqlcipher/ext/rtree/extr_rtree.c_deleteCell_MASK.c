#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int iNode; struct TYPE_8__* pParent; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  int /*<<< orphan*/  Rtree ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(Rtree *pRtree, RtreeNode *pNode, int iCell, int iHeight){
  RtreeNode *pParent;
  int rc;

  if( SQLITE_OK!=(rc = FUNC4(pRtree, pNode)) ){
    return rc;
  }

  /* Remove the cell from the node. This call just moves bytes around
  ** the in-memory node image, so it cannot fail.
  */
  FUNC5(pRtree, pNode, iCell);

  /* If the node is not the tree root and now has less than the minimum
  ** number of cells, remove it from the tree. Otherwise, update the
  ** cell in the parent node so that it tightly contains the updated
  ** node.
  */
  pParent = pNode->pParent;
  FUNC2( pParent || pNode->iNode==1 );
  if( pParent ){
    if( FUNC0(pNode)<FUNC1(pRtree) ){
      rc = FUNC6(pRtree, pNode, iHeight);
    }else{
      rc = FUNC3(pRtree, pNode);
    }
  }

  return rc;
}