#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ rc; int /*<<< orphan*/ * dbMain; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/ * dbRbu; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(sqlite3rbu *p){
  if( p->rc==SQLITE_OK ){
    sqlite3 *dbread = (FUNC2(p) ? p->dbRbu : p->dbMain);
    int iCookie = 1000000;
    sqlite3_stmt *pStmt;

    p->rc = FUNC0(dbread, &pStmt, &p->zErrmsg, 
        "PRAGMA schema_version"
    );
    if( p->rc==SQLITE_OK ){
      /* Coverage: it may be that this sqlite3_step() cannot fail. There
      ** is already a transaction open, so the prepared statement cannot
      ** throw an SQLITE_SCHEMA exception. The only database page the
      ** statement reads is page 1, which is guaranteed to be in the cache.
      ** And no memory allocations are required.  */
      if( SQLITE_ROW==FUNC5(pStmt) ){
        iCookie = FUNC4(pStmt, 0);
      }
      FUNC1(p, pStmt);
    }
    if( p->rc==SQLITE_OK ){
      FUNC3(p, p->dbMain, "PRAGMA schema_version = %d", iCookie+1);
    }
  }
}