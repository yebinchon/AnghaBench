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
struct TYPE_6__ {scalar_t__ rcErr; TYPE_2__* pSrc; int /*<<< orphan*/  dbSrc; void* nPage; void* szPage; int /*<<< orphan*/  zSrcFile; } ;
typedef  TYPE_1__ ScrubState ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_CHECKPOINT_FULL ; 
 scalar_t__ SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_FCNTL_FILE_POINTER ; 
 int SQLITE_OPEN_PRIVATECACHE ; 
 int SQLITE_OPEN_READWRITE ; 
 int SQLITE_OPEN_URI ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ScrubState *p){
  sqlite3_stmt *pStmt;
  int rc;
  /* Open the source database file */
  p->rcErr = FUNC7(p->zSrcFile, &p->dbSrc,
                 SQLITE_OPEN_READWRITE |
                 SQLITE_OPEN_URI | SQLITE_OPEN_PRIVATECACHE, 0);
  if( p->rcErr ){
    FUNC0(p, "cannot open source database: %s",
                      FUNC3(p->dbSrc));
    return;
  }
  p->rcErr = FUNC4(p->dbSrc, "SELECT 1 FROM sqlite_master; BEGIN;",
                          0, 0, 0);
  if( p->rcErr ){
    FUNC0(p,
       "cannot start a read transaction on the source database: %s",
       FUNC3(p->dbSrc));
    return;
  }
  rc = FUNC9(p->dbSrc, "main", SQLITE_CHECKPOINT_FULL,
                                 0, 0);
  if( rc ){
    FUNC0(p, "cannot checkpoint the source database");
    return;
  }
  pStmt = FUNC1(p, p->dbSrc, "PRAGMA page_size");
  if( pStmt==0 ) return;
  rc = FUNC8(pStmt);
  if( rc==SQLITE_ROW ){
    p->szPage = FUNC2(pStmt, 0);
  }else{
    FUNC0(p, "unable to determine the page size");
  }
  FUNC6(pStmt);
  if( p->rcErr ) return;
  pStmt = FUNC1(p, p->dbSrc, "PRAGMA page_count");
  if( pStmt==0 ) return;
  rc = FUNC8(pStmt);
  if( rc==SQLITE_ROW ){
    p->nPage = FUNC2(pStmt, 0);
  }else{
    FUNC0(p, "unable to determine the size of the source database");
  }
  FUNC6(pStmt);
  FUNC5(p->dbSrc, "main", SQLITE_FCNTL_FILE_POINTER, &p->pSrc);
  if( p->pSrc==0 || p->pSrc->pMethods==0 ){
    FUNC0(p, "cannot get the source file handle");
    p->rcErr = SQLITE_ERROR;
  }
}