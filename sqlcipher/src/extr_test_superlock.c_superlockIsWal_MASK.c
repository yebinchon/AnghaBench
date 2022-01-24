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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_3__ {int bWal; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Superlock ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(Superlock *pLock){
  int rc;                         /* Return Code */
  sqlite3_stmt *pStmt;            /* Compiled PRAGMA journal_mode statement */

  rc = FUNC2(pLock->db, "PRAGMA main.journal_mode", -1, &pStmt, 0);
  if( rc!=SQLITE_OK ) return rc;

  pLock->bWal = 0;
  if( SQLITE_ROW==FUNC3(pStmt) ){
    const char *zMode = (const char *)FUNC0(pStmt, 0);
    if( zMode && FUNC5(zMode)==3 && FUNC4("wal", zMode, 3)==0 ){
      pLock->bWal = 1;
    }
  }

  return FUNC1(pStmt);
}