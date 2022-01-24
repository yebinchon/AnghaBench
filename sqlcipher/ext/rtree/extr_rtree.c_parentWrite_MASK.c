#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_3__ {int /*<<< orphan*/  pWriteParent; } ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Rtree *pRtree, sqlite3_int64 iNode, sqlite3_int64 iPar){
  FUNC0(pRtree->pWriteParent, 1, iNode);
  FUNC0(pRtree->pWriteParent, 2, iPar);
  FUNC2(pRtree->pWriteParent);
  return FUNC1(pRtree->pWriteParent);
}