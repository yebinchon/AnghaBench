#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {scalar_t__ pMethods; } ;
struct TYPE_6__ {void* rcErr; TYPE_2__* pDest; int /*<<< orphan*/  dbDest; int /*<<< orphan*/  szPage; int /*<<< orphan*/  zDestFile; } ;
typedef  TYPE_1__ ScrubState ;

/* Variables and functions */
 void* SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_FCNTL_FILE_POINTER ; 
 void* SQLITE_NOMEM ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_PRIVATECACHE ; 
 int SQLITE_OPEN_READWRITE ; 
 int SQLITE_OPEN_URI ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(ScrubState *p){
  sqlite3_stmt *pStmt;
  int rc;
  char *zSql;
  if( p->rcErr ) return;
  p->rcErr = FUNC9(p->zDestFile, &p->dbDest,
                 SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE |
                 SQLITE_OPEN_URI | SQLITE_OPEN_PRIVATECACHE, 0);
  if( p->rcErr ){
    FUNC0(p, "cannot open destination database: %s",
                      FUNC3(p->dbDest));
    return;
  }
  zSql = FUNC8("PRAGMA page_size(%u);", p->szPage);
  if( zSql==0 ){
    p->rcErr = SQLITE_NOMEM;
    return;
  }
  p->rcErr = FUNC4(p->dbDest, zSql, 0, 0, 0);
  FUNC7(zSql);
  if( p->rcErr ){
    FUNC0(p,
       "cannot set the page size on the destination database: %s",
       FUNC3(p->dbDest));
    return;
  }
  FUNC4(p->dbDest, "PRAGMA journal_mode=OFF;", 0, 0, 0);
  p->rcErr = FUNC4(p->dbDest, "BEGIN EXCLUSIVE;", 0, 0, 0);
  if( p->rcErr ){
    FUNC0(p,
       "cannot start a write transaction on the destination database: %s",
       FUNC3(p->dbDest));
    return;
  }
  pStmt = FUNC1(p, p->dbDest, "PRAGMA page_count;");
  if( pStmt==0 ) return;
  rc = FUNC10(pStmt);
  if( rc!=SQLITE_ROW ){
    FUNC0(p, "cannot measure the size of the destination");
  }else if( FUNC2(pStmt, 0)>1 ){
    FUNC0(p, "destination database is not empty - holds %d pages",
                   FUNC2(pStmt, 0));
  }
  FUNC6(pStmt);
  FUNC5(p->dbDest, "main", SQLITE_FCNTL_FILE_POINTER, &p->pDest);
  if( p->pDest==0 || p->pDest->pMethods==0 ){
    FUNC0(p, "cannot get the destination file handle");
    p->rcErr = SQLITE_ERROR;
  }
}