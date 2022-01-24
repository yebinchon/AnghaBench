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
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  scalar_t__ i64 ;
struct TYPE_3__ {void* nRowEst; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 void* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* RTREE_DEFAULT_ROWEST ; 
 int /*<<< orphan*/  RTREE_MIN_ROWEST ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(sqlite3 *db, Rtree *pRtree){
  const char *zFmt = "SELECT stat FROM %Q.sqlite_stat1 WHERE tbl = '%q_rowid'";
  char *zSql;
  sqlite3_stmt *p;
  int rc;
  i64 nRow = 0;

  rc = FUNC7(
      db, pRtree->zDb, "sqlite_stat1",0,0,0,0,0,0
  );
  if( rc!=SQLITE_OK ){
    pRtree->nRowEst = RTREE_DEFAULT_ROWEST;
    return rc==SQLITE_ERROR ? SQLITE_OK : rc;
  }
  zSql = FUNC4(zFmt, pRtree->zDb, pRtree->zName);
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
  }else{
    rc = FUNC5(db, zSql, -1, &p, 0);
    if( rc==SQLITE_OK ){
      if( FUNC6(p)==SQLITE_ROW ) nRow = FUNC1(p, 0);
      rc = FUNC2(p);
    }else if( rc!=SQLITE_NOMEM ){
      rc = SQLITE_OK;
    }

    if( rc==SQLITE_OK ){
      if( nRow==0 ){
        pRtree->nRowEst = RTREE_DEFAULT_ROWEST;
      }else{
        pRtree->nRowEst = FUNC0(nRow, RTREE_MIN_ROWEST);
      }
    }
    FUNC3(zSql);
  }

  return rc;
}