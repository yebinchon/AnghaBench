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
typedef  scalar_t__ sqlite_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 scalar_t__ finalizeTime ; 
 scalar_t__ prepTime ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ runTime ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(sqlite3 *db, const char *zSql, int bQuiet){
  sqlite3_stmt *pStmt;
  const char *stmtTail;
  sqlite_uint64 iStart, iElapse;
  int rc;
  
  if (!bQuiet){
    FUNC0("***************************************************************\n");
  }
  if (!bQuiet) FUNC0("SQL statement: [%s]\n", zSql);
  iStart = FUNC1();
  rc = FUNC3(db, zSql, -1, &pStmt, &stmtTail);
  iElapse = FUNC1() - iStart;
  prepTime += iElapse;
  if (!bQuiet){
    FUNC0("sqlite3_prepare_v2() returns %d in %llu cycles\n", rc, iElapse);
  }
  if( rc==SQLITE_OK ){
    int nRow = 0;
    iStart = FUNC1();
    while( (rc=FUNC4(pStmt))==SQLITE_ROW ){ nRow++; }
    iElapse = FUNC1() - iStart;
    runTime += iElapse;
    if (!bQuiet){
      FUNC0("sqlite3_step() returns %d after %d rows in %llu cycles\n",
             rc, nRow, iElapse);
    }
    iStart = FUNC1();
    rc = FUNC2(pStmt);
    iElapse = FUNC1() - iStart;
    finalizeTime += iElapse;
    if (!bQuiet){
      FUNC0("sqlite3_finalize() returns %d in %llu cycles\n", rc, iElapse);
    }
  }
}