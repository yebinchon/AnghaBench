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
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  scalar_t__ sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  BINARYLOG_FINALIZE ; 
 int /*<<< orphan*/  BINARYLOG_PREPARE_V2 ; 
 int /*<<< orphan*/  BINARYLOG_STEP ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(sqlite3_vfs *pInstVfs, sqlite3 *db, const char *zSql){
  sqlite3_stmt *pStmt;
  const char *stmtTail;
  int rc;
  char zMessage[1024];
  zMessage[1023] = '\0';

  sqlite3_uint64 iTime;

  FUNC5(1023, zMessage, "sqlite3_prepare_v2: %s", zSql);
  FUNC3(pInstVfs, zMessage);

  iTime = FUNC0();
  rc = FUNC4(db, zSql, -1, &pStmt, &stmtTail);
  iTime = FUNC0() - iTime;
  FUNC2(pInstVfs,BINARYLOG_PREPARE_V2,iTime,rc,zSql);

  if( rc==SQLITE_OK ){
    int nRow = 0;

    FUNC5(1023, zMessage, "sqlite3_step loop: %s", zSql);
    FUNC3(pInstVfs, zMessage);
    iTime = FUNC0();
    while( (rc=FUNC6(pStmt))==SQLITE_ROW ){ nRow++; }
    iTime = FUNC0() - iTime;
    FUNC2(pInstVfs, BINARYLOG_STEP, iTime, rc, zSql);

    FUNC5(1023, zMessage, "sqlite3_finalize: %s", zSql);
    FUNC3(pInstVfs, zMessage);
    iTime = FUNC0();
    rc = FUNC1(pStmt);
    iTime = FUNC0() - iTime;
    FUNC2(pInstVfs, BINARYLOG_FINALIZE, iTime, rc, zSql);
  }
}