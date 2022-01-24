#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_4__ {int /*<<< orphan*/  pReadRowid; } ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
  Rtree *pRtree,              /* RTree to search */
  i64 iRowid,                 /* The rowid searching for */
  RtreeNode **ppLeaf,         /* Write the node here */
  sqlite3_int64 *piNode       /* Write the node-id here */
){
  int rc;
  *ppLeaf = 0;
  FUNC1(pRtree->pReadRowid, 1, iRowid);
  if( FUNC4(pRtree->pReadRowid)==SQLITE_ROW ){
    i64 iNode = FUNC2(pRtree->pReadRowid, 0);
    if( piNode ) *piNode = iNode;
    rc = FUNC0(pRtree, iNode, 0, ppLeaf);
    FUNC3(pRtree->pReadRowid);
  }else{
    rc = FUNC3(pRtree->pReadRowid);
  }
  return rc;
}