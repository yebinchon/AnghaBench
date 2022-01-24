#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dbMain; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char**,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(
  sqlite3_context *pCtx, 
  int nVal,
  sqlite3_value **apVal
){
  sqlite3rbu *p = (sqlite3rbu*)FUNC10(pCtx);
  sqlite3_stmt *pStmt = 0;
  char *zErrmsg = 0;
  int rc;

  FUNC0( nVal==1 );
  
  rc = FUNC1(p->dbMain, &pStmt, &zErrmsg, 
      FUNC6("SELECT count(*) FROM sqlite_master "
        "WHERE type='index' AND tbl_name = %Q", FUNC11(apVal[0]))
  );
  if( rc!=SQLITE_OK ){
    FUNC7(pCtx, zErrmsg, -1);
  }else{
    int nIndex = 0;
    if( SQLITE_ROW==FUNC9(pStmt) ){
      nIndex = FUNC2(pStmt, 0);
    }
    rc = FUNC4(pStmt);
    if( rc==SQLITE_OK ){
      FUNC8(pCtx, nIndex);
    }else{
      FUNC7(pCtx, FUNC3(p->dbMain), -1);
    }
  }

  FUNC5(zErrmsg);
}