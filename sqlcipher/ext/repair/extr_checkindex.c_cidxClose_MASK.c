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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_3__ {struct TYPE_3__* zAfterKey; struct TYPE_3__* zIdxName; int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_1__ CidxCursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab_cursor *pCursor){
  CidxCursor *pCsr = (CidxCursor*)pCursor;
  FUNC0(pCsr->pStmt);
  FUNC1(pCsr->zIdxName);
  FUNC1(pCsr->zAfterKey);
  FUNC1(pCsr);
  return SQLITE_OK;
}