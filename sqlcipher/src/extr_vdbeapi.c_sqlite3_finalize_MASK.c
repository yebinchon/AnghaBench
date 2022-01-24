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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_10__ {TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

int FUNC6(sqlite3_stmt *pStmt){
  int rc;
  if( pStmt==0 ){
    /* IMPLEMENTATION-OF: R-57228-12904 Invoking sqlite3_finalize() on a NULL
    ** pointer is a harmless no-op. */
    rc = SQLITE_OK;
  }else{
    Vdbe *v = (Vdbe*)pStmt;
    sqlite3 *db = v->db;
    if( FUNC5(v) ) return SQLITE_MISUSE_BKPT;
    FUNC4(db->mutex);
    FUNC0(db, v);
    rc = FUNC3(v);
    rc = FUNC1(db, rc);
    FUNC2(db);
  }
  return rc;
}