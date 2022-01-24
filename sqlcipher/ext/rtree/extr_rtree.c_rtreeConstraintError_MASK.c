#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_4__ {void* zErrMsg; } ;
struct TYPE_5__ {int /*<<< orphan*/  zName; TYPE_1__ base; int /*<<< orphan*/  db; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int SQLITE_CONSTRAINT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char*,int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Rtree *pRtree, int iCol){
  sqlite3_stmt *pStmt = 0;
  char *zSql; 
  int rc;

  FUNC0( iCol==0 || iCol%2 );
  zSql = FUNC4("SELECT * FROM %Q.%Q", pRtree->zDb, pRtree->zName);
  if( zSql ){
    rc = FUNC5(pRtree->db, zSql, -1, &pStmt, 0);
  }else{
    rc = SQLITE_NOMEM;
  }
  FUNC3(zSql);

  if( rc==SQLITE_OK ){
    if( iCol==0 ){
      const char *zCol = FUNC1(pStmt, 0);
      pRtree->base.zErrMsg = FUNC4(
          "UNIQUE constraint failed: %s.%s", pRtree->zName, zCol
      );
    }else{
      const char *zCol1 = FUNC1(pStmt, iCol);
      const char *zCol2 = FUNC1(pStmt, iCol+1);
      pRtree->base.zErrMsg = FUNC4(
          "rtree constraint failed: %s.(%s<=%s)", pRtree->zName, zCol1, zCol2
      );
    }
  }

  FUNC2(pStmt);
  return (rc==SQLITE_OK ? SQLITE_CONSTRAINT : rc);
}