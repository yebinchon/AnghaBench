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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_3__ {int /*<<< orphan*/  db; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab *pVtab, const char *zNewName){
  Rtree *pRtree = (Rtree *)pVtab;
  int rc = SQLITE_NOMEM;
  char *zSql = FUNC3(
    "ALTER TABLE %Q.'%q_node'   RENAME TO \"%w_node\";"
    "ALTER TABLE %Q.'%q_parent' RENAME TO \"%w_parent\";"
    "ALTER TABLE %Q.'%q_rowid'  RENAME TO \"%w_rowid\";"
    , pRtree->zDb, pRtree->zName, zNewName 
    , pRtree->zDb, pRtree->zName, zNewName 
    , pRtree->zDb, pRtree->zName, zNewName
  );
  if( zSql ){
    FUNC0(pRtree);
    rc = FUNC1(pRtree->db, zSql, 0, 0, 0);
    FUNC2(zSql);
  }
  return rc;
}