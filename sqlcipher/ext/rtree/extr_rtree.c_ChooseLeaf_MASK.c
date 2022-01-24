#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_16__ {int iDepth; } ;
struct TYPE_15__ {int iRowid; } ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  scalar_t__ RtreeDValue ;
typedef  TYPE_1__ RtreeCell ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RTREE_ZERO ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(
  Rtree *pRtree,               /* Rtree table */
  RtreeCell *pCell,            /* Cell to insert into rtree */
  int iHeight,                 /* Height of sub-tree rooted at pCell */
  RtreeNode **ppLeaf           /* OUT: Selected leaf page */
){
  int rc;
  int ii;
  RtreeNode *pNode = 0;
  rc = FUNC3(pRtree, 1, 0, &pNode);

  for(ii=0; rc==SQLITE_OK && ii<(pRtree->iDepth-iHeight); ii++){
    int iCell;
    sqlite3_int64 iBest = 0;

    RtreeDValue fMinGrowth = RTREE_ZERO;
    RtreeDValue fMinArea = RTREE_ZERO;

    int nCell = FUNC0(pNode);
    RtreeCell cell;
    RtreeNode *pChild;

    RtreeCell *aCell = 0;

    /* Select the child node which will be enlarged the least if pCell
    ** is inserted into it. Resolve ties by choosing the entry with
    ** the smallest area.
    */
    for(iCell=0; iCell<nCell; iCell++){
      int bBest = 0;
      RtreeDValue growth;
      RtreeDValue area;
      FUNC4(pRtree, pNode, iCell, &cell);
      growth = FUNC2(pRtree, &cell, pCell);
      area = FUNC1(pRtree, &cell);
      if( iCell==0||growth<fMinGrowth||(growth==fMinGrowth && area<fMinArea) ){
        bBest = 1;
      }
      if( bBest ){
        fMinGrowth = growth;
        fMinArea = area;
        iBest = cell.iRowid;
      }
    }

    FUNC6(aCell);
    rc = FUNC3(pRtree, iBest, pNode, &pChild);
    FUNC5(pRtree, pNode);
    pNode = pChild;
  }

  *ppLeaf = pNode;
  return rc;
}