#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {int depth; int szPage; int hasRowid; int nPage; int nEntry; } ;
typedef  TYPE_1__ BinfoCursor ;

/* Variables and functions */
 int SQLITE_CORRUPT ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(sqlite3 *db, int pgno, BinfoCursor *pCsr){
  sqlite3_int64 nEntry = 1;
  int nPage = 1;
  unsigned char *aData;
  sqlite3_stmt *pStmt = 0;
  int rc = SQLITE_OK;
  int pgsz = 0;
  int nCell;
  int iCell;

  rc = FUNC6(db, 
           "SELECT data FROM sqlite_dbpage('main') WHERE pgno=?1", -1,
           &pStmt, 0);
  if( rc ) return rc;
  pCsr->depth = 1;
  while(1){
    FUNC2(pStmt, 1, pgno);
    rc = FUNC8(pStmt);
    if( rc!=SQLITE_ROW ){
      rc = SQLITE_ERROR;
      break;
    }
    pCsr->szPage = pgsz = FUNC4(pStmt, 0);
    aData = (unsigned char*)FUNC3(pStmt, 0);
    if( aData==0 ){    
      rc = SQLITE_NOMEM;
      break;
    }
    if( pgno==1 ){
      aData += 100;
      pgsz -= 100;
    }
    pCsr->hasRowid = aData[0]!=2 && aData[0]!=10;
    nCell = FUNC0(aData+3);
    nEntry *= (nCell+1);
    if( aData[0]==10 || aData[0]==13 ) break;
    nPage *= (nCell+1);
    if( nCell<=1 ){
      pgno = FUNC1(aData+8);
    }else{
      iCell = FUNC0(aData+12+2*(nCell/2));
      if( pgno==1 ) iCell -= 100;
      if( iCell<=12 || iCell>=pgsz-4 ){
        rc = SQLITE_CORRUPT;
        break;
      }
      pgno = FUNC1(aData+iCell);
    }
    pCsr->depth++;
    FUNC7(pStmt);
  }
  FUNC5(pStmt);
  pCsr->nPage = nPage;
  pCsr->nEntry = nEntry;
  if( rc==SQLITE_ROW ) rc = SQLITE_OK;
  return rc;
}