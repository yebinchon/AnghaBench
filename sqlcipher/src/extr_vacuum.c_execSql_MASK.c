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
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC9(sqlite3 *db, char **pzErrMsg, const char *zSql){
  sqlite3_stmt *pStmt;
  int rc;

  /* printf("SQL: [%s]\n", zSql); fflush(stdout); */
  rc = FUNC5(db, zSql, -1, &pStmt, 0);
  if( rc!=SQLITE_OK ) return rc;
  while( SQLITE_ROW==(rc = FUNC6(pStmt)) ){
    const char *zSubSql = (const char*)FUNC2(pStmt,0);
    FUNC0( FUNC7(zSql,"SELECT",6)==0 );
    /* The secondary SQL must be one of CREATE TABLE, CREATE INDEX,
    ** or INSERT.  Historically there have been attacks that first
    ** corrupt the sqlite_master.sql field with other kinds of statements
    ** then run VACUUM to get those statements to execute at inappropriate
    ** times. */
    if( zSubSql
     && (FUNC8(zSubSql,"CRE",3)==0 || FUNC8(zSubSql,"INS",3)==0)
    ){
      rc = FUNC9(db, pzErrMsg, zSubSql);
      if( rc!=SQLITE_OK ) break;
    }
  }
  FUNC0( rc!=SQLITE_ROW );
  if( rc==SQLITE_DONE ) rc = SQLITE_OK;
  if( rc ){
    FUNC1(pzErrMsg, db, FUNC3(db));
  }
  (void)FUNC4(pStmt);
  return rc;
}