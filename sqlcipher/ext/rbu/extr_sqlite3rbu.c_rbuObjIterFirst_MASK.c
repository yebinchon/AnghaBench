#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int rc; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbMain; int /*<<< orphan*/  dbRbu; } ;
typedef  TYPE_1__ sqlite3rbu ;
struct TYPE_10__ {int bCleanup; int /*<<< orphan*/  pIdxIter; int /*<<< orphan*/  pTblIter; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(sqlite3rbu *p, RbuObjIter *pIter){
  int rc;
  FUNC0(pIter, 0, sizeof(RbuObjIter));

  rc = FUNC2(p->dbRbu, &pIter->pTblIter, &p->zErrmsg, 
    FUNC5(
      "SELECT rbu_target_name(name, type='view') AS target, name "
      "FROM sqlite_master "
      "WHERE type IN ('table', 'view') AND target IS NOT NULL "
      " %s "
      "ORDER BY name"
  , FUNC3(p) ? "AND rootpage!=0 AND rootpage IS NOT NULL" : ""));

  if( rc==SQLITE_OK ){
    rc = FUNC1(p->dbMain, &pIter->pIdxIter, &p->zErrmsg,
        "SELECT name, rootpage, sql IS NULL OR substr(8, 6)=='UNIQUE' "
        "  FROM main.sqlite_master "
        "  WHERE type='index' AND tbl_name = ?"
    );
  }

  pIter->bCleanup = 1;
  p->rc = rc;
  return FUNC4(p, pIter);
}