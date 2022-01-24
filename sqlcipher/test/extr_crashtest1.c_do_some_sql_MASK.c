#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int SQLITE_CORRUPT ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(int parent){
  char *zErr;
  int rc = SQLITE_OK;
  sqlite *db;
  int cnt = 0;
  static char zBig[] = 
    "-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    "-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

  if( FUNC0("./test.db-journal",0)==0 ){
    /*printf("pid %d: journal exists.  rollback will be required\n",getpid());*/    FUNC11("test.db-saved");
    FUNC10("cp test.db test.db-saved");
    FUNC11("test.db-journal-saved");
    FUNC10("cp test.db-journal test.db-journal-saved");
  }
  db = FUNC7("./test.db", 0, &zErr);
  if( db==0 ){
    FUNC4("ERROR: %s\n", zErr);
    if( FUNC9(zErr,"database disk image is malformed")==0 ){
      FUNC3(parent, SIGKILL);
    }
    FUNC1(1);
  }
  FUNC8(FUNC2());
  while( rc==SQLITE_OK ){
    cnt++;
    rc = FUNC6(db, 
       "INSERT INTO t1 VALUES(%d,'%d%s')", 0, 0, &zErr,
       FUNC5(), FUNC5(), zBig);
  }
  if( rc!=SQLITE_OK ){
    FUNC4("ERROR #%d: %s\n", rc, zErr);
    if( rc==SQLITE_CORRUPT ){
      FUNC3(parent, SIGKILL);
    }
  }
  FUNC4("pid %d: cnt=%d\n", FUNC2(), cnt);
}