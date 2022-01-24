#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_2__ {scalar_t__ iTimeout; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_TIMEOUT ; 
 int SQLITE_BUSY ; 
 int SQLITE_DONE ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/ * FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(int iClient, int iTimeout, char *zErrPrefix){
  sqlite3_stmt *pStmt;
  int rc;
  if( iClient>0 ){
    pStmt = FUNC1(
               "SELECT 1 FROM task"
               " WHERE client=%d"
               "   AND client IN (SELECT id FROM client)"
               "  AND endtime IS NULL",
               iClient);
  }else{
    pStmt = FUNC1(
               "SELECT 1 FROM task"
               " WHERE client IN (SELECT id FROM client)"
               "   AND endtime IS NULL");
  }
  g.iTimeout = 0;
  while( ((rc = FUNC5(pStmt))==SQLITE_BUSY || rc==SQLITE_ROW)
    && iTimeout>0
  ){
    FUNC3(pStmt);
    FUNC4(50);
    iTimeout -= 50;
  }
  FUNC2(pStmt);
  g.iTimeout = DEFAULT_TIMEOUT;
  if( rc!=SQLITE_DONE ){
    if( zErrPrefix==0 ) zErrPrefix = "";
    if( iClient>0 ){
      FUNC0("%stimeout waiting for client %d", zErrPrefix, iClient);
    }else{
      FUNC0("%stimeout waiting for all clients", zErrPrefix);
    }
  }
}