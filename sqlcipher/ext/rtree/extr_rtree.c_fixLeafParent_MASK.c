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
typedef  scalar_t__ i64 ;
struct TYPE_9__ {int /*<<< orphan*/  pReadParent; } ;
struct TYPE_8__ {int iNode; struct TYPE_8__* pParent; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int SQLITE_CORRUPT_VTAB ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Rtree *pRtree, RtreeNode *pLeaf){
  int rc = SQLITE_OK;
  RtreeNode *pChild = pLeaf;
  while( rc==SQLITE_OK && pChild->iNode!=1 && pChild->pParent==0 ){
    int rc2 = SQLITE_OK;          /* sqlite3_reset() return code */
    FUNC2(pRtree->pReadParent, 1, pChild->iNode);
    rc = FUNC5(pRtree->pReadParent);
    if( rc==SQLITE_ROW ){
      RtreeNode *pTest;           /* Used to test for reference loops */
      i64 iNode;                  /* Node number of parent node */

      /* Before setting pChild->pParent, test that we are not creating a
      ** loop of references (as we would if, say, pChild==pParent). We don't
      ** want to do this as it leads to a memory leak when trying to delete
      ** the referenced counted node structures.
      */
      iNode = FUNC3(pRtree->pReadParent, 0);
      for(pTest=pLeaf; pTest && pTest->iNode!=iNode; pTest=pTest->pParent);
      if( !pTest ){
        rc2 = FUNC1(pRtree, iNode, 0, &pChild->pParent);
      }
    }
    rc = FUNC4(pRtree->pReadParent);
    if( rc==SQLITE_OK ) rc = rc2;
    if( rc==SQLITE_OK && !pChild->pParent ){
      FUNC0(pRtree);
      rc = SQLITE_CORRUPT_VTAB;
    }
    pChild = pChild->pParent;
  }
  return rc;
}