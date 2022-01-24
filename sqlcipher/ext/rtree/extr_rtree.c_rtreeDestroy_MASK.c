#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_4__ {int /*<<< orphan*/  db; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sqlite3_vtab *pVtab){
  Rtree *pRtree = (Rtree *)pVtab;
  int rc;
  char *zCreate = FUNC4(
    "DROP TABLE '%q'.'%q_node';"
    "DROP TABLE '%q'.'%q_rowid';"
    "DROP TABLE '%q'.'%q_parent';",
    pRtree->zDb, pRtree->zName, 
    pRtree->zDb, pRtree->zName,
    pRtree->zDb, pRtree->zName
  );
  if( !zCreate ){
    rc = SQLITE_NOMEM;
  }else{
    FUNC0(pRtree);
    rc = FUNC2(pRtree->db, zCreate, 0, 0, 0);
    FUNC3(zCreate);
  }
  if( rc==SQLITE_OK ){
    FUNC1(pRtree);
  }

  return rc;
}