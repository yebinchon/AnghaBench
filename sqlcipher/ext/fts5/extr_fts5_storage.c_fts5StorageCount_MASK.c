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
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_5__ {int /*<<< orphan*/  db; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
struct TYPE_4__ {TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(Fts5Storage *p, const char *zSuffix, i64 *pnRow){
  Fts5Config *pConfig = p->pConfig;
  char *zSql;
  int rc;

  zSql = FUNC3("SELECT count(*) FROM %Q.'%q_%s'", 
      pConfig->zDb, pConfig->zName, zSuffix
  );
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
  }else{
    sqlite3_stmt *pCnt = 0;
    rc = FUNC4(pConfig->db, zSql, -1, &pCnt, 0);
    if( rc==SQLITE_OK ){
      if( SQLITE_ROW==FUNC5(pCnt) ){
        *pnRow = FUNC0(pCnt, 0);
      }
      rc = FUNC1(pCnt);
    }
  }

  FUNC2(zSql);
  return rc;
}