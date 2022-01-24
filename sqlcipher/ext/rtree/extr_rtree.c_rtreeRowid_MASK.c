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
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_3__ {int /*<<< orphan*/  iCell; } ;
typedef  TYPE_1__ RtreeSearchPoint ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  int /*<<< orphan*/  RtreeCursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab_cursor *pVtabCursor, sqlite_int64 *pRowid){
  RtreeCursor *pCsr = (RtreeCursor *)pVtabCursor;
  RtreeSearchPoint *p = FUNC3(pCsr);
  int rc = SQLITE_OK;
  RtreeNode *pNode = FUNC2(pCsr, &rc);
  if( rc==SQLITE_OK && p ){
    *pRowid = FUNC1(FUNC0(pCsr), pNode, p->iCell);
  }
  return rc;
}