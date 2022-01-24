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
struct TYPE_8__ {scalar_t__ iNode; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  int /*<<< orphan*/  RtreeCell ;
typedef  int /*<<< orphan*/  Rtree ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__**) ; 
 int FUNC1 (TYPE_1__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(Rtree *pRtree, RtreeNode *pNode){
  int ii;
  int rc = SQLITE_OK;
  int nCell = FUNC1(pNode);

  for(ii=0; rc==SQLITE_OK && ii<nCell; ii++){
    RtreeNode *pInsert;
    RtreeCell cell;
    FUNC2(pRtree, pNode, ii, &cell);

    /* Find a node to store this cell in. pNode->iNode currently contains
    ** the height of the sub-tree headed by the cell.
    */
    rc = FUNC0(pRtree, &cell, (int)pNode->iNode, &pInsert);
    if( rc==SQLITE_OK ){
      int rc2;
      rc = FUNC4(pRtree, pInsert, &cell, (int)pNode->iNode);
      rc2 = FUNC3(pRtree, pInsert);
      if( rc==SQLITE_OK ){
        rc = rc2;
      }
    }
  }
  return rc;
}