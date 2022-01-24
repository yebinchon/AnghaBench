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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_3__ {scalar_t__ inWrTrans; } ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *pVtab, int iSavepoint){
  Rtree *pRtree = (Rtree *)pVtab;
  u8 iwt = pRtree->inWrTrans;
  FUNC0(iSavepoint);
  pRtree->inWrTrans = 0;
  FUNC1(pRtree);
  pRtree->inWrTrans = iwt;
  return SQLITE_OK;
}