#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  Fts3Table ;

/* Variables and functions */
 int FTS_CORRUPT_VTAB ; 
 int /*<<< orphan*/  FTS_STAT_DOCTOTAL ; 
 scalar_t__ SQLITE_BLOB ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQL_SELECT_STAT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(
  Fts3Table *pTab,                /* Fts3 table handle */
  sqlite3_stmt **ppStmt           /* OUT: Statement handle */
){
  sqlite3_stmt *pStmt = 0;
  int rc;
  rc = FUNC0(pTab, SQL_SELECT_STAT, &pStmt, 0);
  if( rc==SQLITE_OK ){
    FUNC1(pStmt, 1, FTS_STAT_DOCTOTAL);
    if( FUNC4(pStmt)!=SQLITE_ROW
     || FUNC2(pStmt, 0)!=SQLITE_BLOB
    ){
      rc = FUNC3(pStmt);
      if( rc==SQLITE_OK ) rc = FTS_CORRUPT_VTAB;
      pStmt = 0;
    }
  }
  *ppStmt = pStmt;
  return rc;
}