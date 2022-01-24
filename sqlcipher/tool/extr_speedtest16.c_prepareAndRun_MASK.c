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
 void* FUNC0 (char const*) ; 
 scalar_t__ finalizeTime ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ prepTime ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ runTime ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ **,void const**) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(sqlite3 *db, const char *zSql){
  void *utf16;
  sqlite3_stmt *pStmt;
  const void *stmtTail;
  sqlite_uint64 iStart, iElapse;
  int rc;
  
  FUNC2("****************************************************************\n");
  FUNC2("SQL statement: [%s]\n", zSql);
  utf16 = FUNC0(zSql);
  iStart = FUNC3();
  rc = FUNC5(db, utf16, -1, &pStmt, &stmtTail);
  iElapse = FUNC3() - iStart;
  prepTime += iElapse;
  FUNC2("sqlite3_prepare16_v2() returns %d in %llu cycles\n", rc, iElapse);
  if( rc==SQLITE_OK ){
    int nRow = 0;
    iStart = FUNC3();
    while( (rc=FUNC6(pStmt))==SQLITE_ROW ){ nRow++; }
    iElapse = FUNC3() - iStart;
    runTime += iElapse;
    FUNC2("sqlite3_step() returns %d after %d rows in %llu cycles\n",
           rc, nRow, iElapse);
    iStart = FUNC3();
    rc = FUNC4(pStmt);
    iElapse = FUNC3() - iStart;
    finalizeTime += iElapse;
    FUNC2("sqlite3_finalize() returns %d in %llu cycles\n", rc, iElapse);
  }
  FUNC1(utf16);
}