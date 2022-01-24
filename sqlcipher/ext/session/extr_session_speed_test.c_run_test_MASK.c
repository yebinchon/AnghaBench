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
typedef  int /*<<< orphan*/  sqlite3_session ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int*,void**) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xConflict ; 

__attribute__((used)) static void FUNC13(
  sqlite3 *db, 
  sqlite3 *db2, 
  int nRow, 
  const char *zSql
){
  sqlite3_session *pSession = 0;
  sqlite3_stmt *pStmt = 0;
  int rc;
  int i;
  int nChangeset;
  void *pChangeset;

  /* Attach a session object to database db */
  rc = FUNC11(db, "main", &pSession);
  if( rc!=SQLITE_OK ) FUNC0(rc);

  /* Configure the session to capture changes on all tables */
  rc = FUNC9(pSession, 0);
  if( rc!=SQLITE_OK ) FUNC0(rc);

  /* Prepare the SQL statement */
  rc = FUNC5(db, zSql, -1, &pStmt, 0);
  if( rc!=SQLITE_OK ) FUNC0(rc);

  /* Open a transaction */
  FUNC1(db, "BEGIN");

  /* Execute the SQL statement nRow times */
  for(i=0; i<nRow; i++){
    FUNC2(pStmt, 1, i);
    FUNC7(pStmt);
    rc = FUNC6(pStmt);
    if( rc!=SQLITE_OK ) FUNC0(rc);
  }
  FUNC3(pStmt);

  /* Extract a changeset from the sessions object */
  rc = FUNC10(pSession, &nChangeset, &pChangeset);
  if( rc!=SQLITE_OK ) FUNC0(rc);
  FUNC1(db, "COMMIT");

  /* Apply the changeset to the second db */
  rc = FUNC8(db2, nChangeset, pChangeset, 0, xConflict, 0);
  if( rc!=SQLITE_OK ) FUNC0(rc);

  /* Cleanup */
  FUNC4(pChangeset);
  FUNC12(pSession);
}