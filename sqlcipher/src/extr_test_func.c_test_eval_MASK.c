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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **argv
){
  sqlite3_stmt *pStmt;
  int rc;
  sqlite3 *db = FUNC2(pCtx);
  const char *zSql;

  zSql = (char*)FUNC11(argv[0]);
  rc = FUNC6(db, zSql, -1, &pStmt, 0);
  if( rc==SQLITE_OK ){
    rc = FUNC10(pStmt);
    if( rc==SQLITE_ROW ){
      FUNC9(pCtx, FUNC1(pStmt, 0));
    }
    rc = FUNC4(pStmt);
  }
  if( rc ){
    char *zErr;
    FUNC0( pStmt==0 );
    zErr = FUNC5("sqlite3_prepare_v2() error: %s",FUNC3(db));
    FUNC8(pCtx, zErr, -1, sqlite3_free);
    FUNC7(pCtx, rc);
  }
}