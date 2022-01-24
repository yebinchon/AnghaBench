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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sqlite3 *db, const char *zSql, int *piVal){
  int rc = SQLITE_NOMEM;
  if( zSql ){
    sqlite3_stmt *pStmt = 0;
    rc = FUNC2(db, zSql, -1, &pStmt, 0);
    if( rc==SQLITE_OK ){
      if( SQLITE_ROW==FUNC3(pStmt) ){
        *piVal = FUNC0(pStmt, 0);
      }
      rc = FUNC1(pStmt);
    }
  }
  return rc;
}