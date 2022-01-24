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

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(sqlite3_stmt *pStmt){
  const char *zSql;               /* Input SQL */
  char *zExplain;                 /* SQL with EXPLAIN QUERY PLAN prepended */
  sqlite3_stmt *pExplain;         /* Compiled EXPLAIN QUERY PLAN command */
  int rc;                         /* Return code from sqlite3_prepare_v2() */

  zSql = FUNC8(pStmt);
  if( zSql==0 ) return SQLITE_ERROR;

  zExplain = FUNC6("EXPLAIN QUERY PLAN %s", zSql);
  if( zExplain==0 ) return SQLITE_NOMEM;

  rc = FUNC7(FUNC3(pStmt), zExplain, -1, &pExplain, 0);
  FUNC5(zExplain);
  if( rc!=SQLITE_OK ) return rc;

  while( SQLITE_ROW==FUNC9(pExplain) ){
    int iSelectid = FUNC1(pExplain, 0);
    int iOrder = FUNC1(pExplain, 1);
    int iFrom = FUNC1(pExplain, 2);
    const char *zDetail = (const char *)FUNC2(pExplain, 3);

    FUNC0("%d %d %d %s\n", iSelectid, iOrder, iFrom, zDetail);
  }

  return FUNC4(pExplain);
}