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
struct TYPE_2__ {void* iTimeout; int /*<<< orphan*/  db; scalar_t__ nTest; scalar_t__ nError; } ;

/* Variables and functions */
 void* DEFAULT_TIMEOUT ; 
 int SQLITE_BUSY ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int) ; 
 char* FUNC12 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int FUNC16 (char*) ; 

__attribute__((used)) static int FUNC17(
  int iClient,              /* The client number */
  char **pzScript,          /* Write task script here */
  int *pTaskId,             /* Write task number here */
  char **pzTaskName         /* Name of the task */
){
  sqlite3_stmt *pStmt = 0;
  int taskId;
  int rc;
  int totalTime = 0;

  *pzScript = 0;
  g.iTimeout = 0;
  while(1){
    rc = FUNC16("BEGIN IMMEDIATE");
    if( rc==SQLITE_BUSY ){
      FUNC13(10);
      totalTime += 10;
      continue;
    }
    if( rc!=SQLITE_OK ){
      FUNC2("in startScript: %s", FUNC9(g.db));
    }
    if( g.nError || g.nTest ){
      FUNC4("UPDATE counters SET nError=nError+%d, nTest=nTest+%d",
             g.nError, g.nTest);
      g.nError = 0;
      g.nTest = 0;
    }
    pStmt = FUNC3("SELECT 1 FROM client WHERE id=%d AND wantHalt",iClient);
    rc = FUNC14(pStmt);
    FUNC10(pStmt);
    if( rc==SQLITE_ROW ){
      FUNC4("DELETE FROM client WHERE id=%d", iClient);
      g.iTimeout = DEFAULT_TIMEOUT;
      FUNC4("COMMIT TRANSACTION;");
      return SQLITE_DONE;
    }
    pStmt = FUNC3(
              "SELECT script, id, name FROM task"
              " WHERE client=%d AND starttime IS NULL"
              " ORDER BY id LIMIT 1", iClient);
    rc = FUNC14(pStmt);
    if( rc==SQLITE_ROW ){
      int n = FUNC6(pStmt, 0);
      *pzScript = FUNC11(n+1);
      FUNC15(*pzScript, (const char*)FUNC8(pStmt, 0));
      *pTaskId = taskId = FUNC7(pStmt, 1);
      *pzTaskName = FUNC12("%s", FUNC8(pStmt, 2));
      FUNC10(pStmt);
      FUNC4("UPDATE task"
             "   SET starttime=strftime('%%Y-%%m-%%d %%H:%%M:%%f','now')"
             " WHERE id=%d;", taskId);
      g.iTimeout = DEFAULT_TIMEOUT;
      FUNC4("COMMIT TRANSACTION;");
      return SQLITE_OK;
    }
    FUNC10(pStmt);
    if( rc==SQLITE_DONE ){
      if( totalTime>30000 ){
        FUNC0("Waited over 30 seconds with no work.  Giving up.");
        FUNC4("DELETE FROM client WHERE id=%d; COMMIT;", iClient);
        FUNC5(g.db);
        FUNC1(1);
      }
      while( FUNC16("COMMIT")==SQLITE_BUSY ){
        FUNC13(10);
        totalTime += 10;
      }
      FUNC13(100);
      totalTime += 100;
      continue;
    }
    FUNC2("%s", FUNC9(g.db));
  }
  g.iTimeout = DEFAULT_TIMEOUT;
}