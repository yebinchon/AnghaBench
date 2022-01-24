#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {int nIndex; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int FTS3_SEGCURSOR_ALL ; 
 int FTS3_SEGDIR_MAXLEVEL ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQL_SELECT_LEVEL ; 
 int /*<<< orphan*/  SQL_SELECT_LEVEL_RANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC4(
  Fts3Table *p,                   /* FTS3 table */
  int iLangid,                    /* Language being queried */
  int iIndex,                     /* Index for p->aIndex[] */
  int iLevel,                     /* Level to select (relative level) */
  sqlite3_stmt **ppStmt           /* OUT: Compiled statement */
){
  int rc;
  sqlite3_stmt *pStmt = 0;

  FUNC0( iLevel==FTS3_SEGCURSOR_ALL || iLevel>=0 );
  FUNC0( iLevel<FTS3_SEGDIR_MAXLEVEL );
  FUNC0( iIndex>=0 && iIndex<p->nIndex );

  if( iLevel<0 ){
    /* "SELECT * FROM %_segdir WHERE level BETWEEN ? AND ? ORDER BY ..." */
    rc = FUNC1(p, SQL_SELECT_LEVEL_RANGE, &pStmt, 0);
    if( rc==SQLITE_OK ){ 
      FUNC3(pStmt, 1, FUNC2(p, iLangid, iIndex, 0));
      FUNC3(pStmt, 2, 
          FUNC2(p, iLangid, iIndex, FTS3_SEGDIR_MAXLEVEL-1)
      );
    }
  }else{
    /* "SELECT * FROM %_segdir WHERE level = ? ORDER BY ..." */
    rc = FUNC1(p, SQL_SELECT_LEVEL, &pStmt, 0);
    if( rc==SQLITE_OK ){ 
      FUNC3(pStmt, 1, FUNC2(p, iLangid, iIndex,iLevel));
    }
  }
  *ppStmt = pStmt;
  return rc;
}