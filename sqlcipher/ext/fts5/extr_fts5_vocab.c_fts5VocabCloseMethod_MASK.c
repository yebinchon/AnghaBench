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
struct TYPE_4__ {int /*<<< orphan*/  pStmt; int /*<<< orphan*/  term; } ;
typedef  TYPE_1__ Fts5VocabCursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab_cursor *pCursor){
  Fts5VocabCursor *pCsr = (Fts5VocabCursor*)pCursor;
  FUNC0(pCsr);
  FUNC1(&pCsr->term);
  FUNC2(pCsr->pStmt);
  FUNC3(pCsr);
  return SQLITE_OK;
}