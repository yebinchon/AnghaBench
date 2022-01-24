#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_8__ {int /*<<< orphan*/  db; int /*<<< orphan*/  iNodeSize; int /*<<< orphan*/ * pWriteNode; } ;
struct TYPE_7__ {int /*<<< orphan*/  iNode; scalar_t__ isDirty; int /*<<< orphan*/  zData; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(Rtree *pRtree, RtreeNode *pNode){
  int rc = SQLITE_OK;
  if( pNode->isDirty ){
    sqlite3_stmt *p = pRtree->pWriteNode;
    if( pNode->iNode ){
      FUNC2(p, 1, pNode->iNode);
    }else{
      FUNC3(p, 1);
    }
    FUNC1(p, 2, pNode->zData, pRtree->iNodeSize, SQLITE_STATIC);
    FUNC6(p);
    pNode->isDirty = 0;
    rc = FUNC5(p);
    FUNC3(p, 2);
    if( pNode->iNode==0 && rc==SQLITE_OK ){
      pNode->iNode = FUNC4(pRtree->db);
      FUNC0(pRtree, pNode);
    }
  }
  return rc;
}