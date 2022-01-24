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
struct TYPE_4__ {int nDb; char** azDb; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ memstat_cursor ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 char** FUNC5 (char**,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(memstat_cursor *pCur){
  sqlite3_stmt *pStmt = 0;
  int rc;
  if( pCur->nDb ) return SQLITE_OK;
  rc = FUNC4(pCur->db, "PRAGMA database_list", -1, &pStmt, 0);
  if( rc ){
    FUNC2(pStmt);
    return rc;
  }
  while( FUNC6(pStmt)==SQLITE_ROW ){
    char **az, *z;
    az = FUNC5(pCur->azDb, sizeof(char*)*(pCur->nDb+1));
    if( az==0 ){
      FUNC0(pCur);
      return SQLITE_NOMEM;
    }
    pCur->azDb = az;
    z = FUNC3("%s", FUNC1(pStmt, 1));
    if( z==0 ){
      FUNC0(pCur);
      return SQLITE_NOMEM;
    }
    pCur->azDb[pCur->nDb] = z;
    pCur->nDb++;
  }
  FUNC2(pStmt);
  return SQLITE_OK;
}