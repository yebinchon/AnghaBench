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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_4__ {int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_1__ FstreeCsr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab_cursor *cur){
  FstreeCsr *pCsr = (FstreeCsr*)cur;
  FUNC1(pCsr->pStmt);
  FUNC0(pCsr);
  FUNC2(pCsr);
  return SQLITE_OK;
}