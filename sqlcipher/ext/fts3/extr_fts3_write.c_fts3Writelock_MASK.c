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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_4__ {scalar_t__ nPendingData; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQL_DELETE_SEGDIR_LEVEL ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Fts3Table *p){
  int rc = SQLITE_OK;
  
  if( p->nPendingData==0 ){
    sqlite3_stmt *pStmt;
    rc = FUNC0(p, SQL_DELETE_SEGDIR_LEVEL, &pStmt, 0);
    if( rc==SQLITE_OK ){
      FUNC1(pStmt, 1);
      FUNC3(pStmt);
      rc = FUNC2(pStmt);
    }
  }

  return rc;
}