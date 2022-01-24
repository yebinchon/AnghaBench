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
struct TYPE_3__ {int /*<<< orphan*/ ** pLeafSelectStmts; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  LEAF_SELECT ; 
 int MERGE_COUNT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(fulltext_vtab *v, int idx,
                                  sqlite3_stmt **ppStmt){
  FUNC0( idx>=-1 && idx<MERGE_COUNT );
  if( idx==-1 ){
    return FUNC1(v->db, v->zDb, v->zName, ppStmt, LEAF_SELECT);
  }else if( v->pLeafSelectStmts[idx]==NULL ){
    int rc = FUNC1(v->db, v->zDb, v->zName, &v->pLeafSelectStmts[idx],
                         LEAF_SELECT);
    if( rc!=SQLITE_OK ) return rc;
  }else{
    int rc = FUNC2(v->pLeafSelectStmts[idx]);
    if( rc!=SQLITE_OK ) return rc;
  }

  *ppStmt = v->pLeafSelectStmts[idx];
  return SQLITE_OK;
}