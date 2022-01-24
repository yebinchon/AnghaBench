#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_8__ {int errMask; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_9__ {TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(sqlite3_stmt *pStmt){
  int rc;
  if( pStmt==0 ){
    rc = SQLITE_OK;
  }else{
    Vdbe *v = (Vdbe*)pStmt;
    sqlite3 *db = v->db;
    FUNC5(db->mutex);
    FUNC1(db, v);
    rc = FUNC3(v);
    FUNC4(v);
    FUNC0( (rc & (db->errMask))==rc );
    rc = FUNC2(db, rc);
    FUNC6(db->mutex);
  }
  return rc;
}