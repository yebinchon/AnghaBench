#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int iReinsertHeight; } ;
struct TYPE_27__ {int /*<<< orphan*/  iRowid; } ;
struct TYPE_26__ {int iNode; struct TYPE_26__* pParent; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  TYPE_2__ RtreeCell ;
typedef  TYPE_3__ Rtree ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_1__*,TYPE_2__*) ; 
 int FUNC1 (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ; 
 int SQLITE_OK ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ; 
 TYPE_1__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(
  Rtree *pRtree,
  RtreeNode *pNode,
  RtreeCell *pCell,
  int iHeight
){
  int rc = SQLITE_OK;
  if( iHeight>0 ){
    RtreeNode *pChild = FUNC3(pRtree, pCell->iRowid);
    if( pChild ){
      FUNC6(pRtree, pChild->pParent);
      FUNC5(pNode);
      pChild->pParent = pNode;
    }
  }
  if( FUNC4(pRtree, pNode, pCell) ){
    if( iHeight<=pRtree->iReinsertHeight || pNode->iNode==1){
      rc = FUNC2(pRtree, pNode, pCell, iHeight);
    }else{
      pRtree->iReinsertHeight = iHeight;
      rc = FUNC1(pRtree, pNode, pCell, iHeight);
    }
  }else{
    rc = FUNC0(pRtree, pNode, pCell);
    if( rc==SQLITE_OK ){
      if( iHeight==0 ){
        rc = FUNC8(pRtree, pCell->iRowid, pNode->iNode);
      }else{
        rc = FUNC7(pRtree, pCell->iRowid, pNode->iNode);
      }
    }
  }
  return rc;
}