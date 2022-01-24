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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
  sqlite3 *db,                    /* Database handle */
  const char *zDb,                /* Database name ("main", "temp" etc.) */
  const char *zFmt,               /* SQL statement format */
  u32 *pnOut                      /* OUT: Integer value */
){
  int rc, rc2;
  char *zSql;
  sqlite3_stmt *pStmt = 0;
  int bOk = 0;

  zSql = FUNC3(zFmt, zDb);
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
  }else{
    rc = FUNC4(db, zSql, -1, &pStmt, 0);
    FUNC2(zSql);
  }

  if( rc==SQLITE_OK && SQLITE_ROW==FUNC5(pStmt) ){
    *pnOut = (u32)FUNC0(pStmt, 0);
    bOk = 1;
  }

  rc2 = FUNC1(pStmt);
  if( rc==SQLITE_OK ) rc = rc2;
  if( rc==SQLITE_OK && bOk==0 ) rc = SQLITE_ERROR;
  return rc;
}