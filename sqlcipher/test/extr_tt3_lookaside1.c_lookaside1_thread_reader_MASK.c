#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_14__ {int rc; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/  db; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC10(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */

  FUNC2(&err, &db, "test.db", 0);

  while( !FUNC9(&err) ){
    sqlite3_stmt *pStmt = 0;
    int rc;

    FUNC6(db.db, "SELECT 1 FROM t1", -1, &pStmt, 0);
    while( FUNC7(pStmt)==SQLITE_ROW ){
      FUNC1(&err, &db, "SELECT length(x||y||z) FROM t2");
    }
    rc = FUNC4(pStmt);
    if( err.rc==SQLITE_OK && rc!=SQLITE_OK ){
      FUNC8(&err, &db, "finalize");
    }
  }

  FUNC0(&err, &db);
  FUNC3(&err);
  return FUNC5("ok");
}