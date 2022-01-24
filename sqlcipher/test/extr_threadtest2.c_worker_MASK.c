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
 int /*<<< orphan*/  DB_FILE ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ all_stop ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 

void *FUNC6(void *workerArg){
  sqlite *db;
  int id = (int)workerArg;
  int rc;
  int cnt = 0;
  FUNC0(stderr, "Starting worker %d\n", id);
  while( !all_stop && cnt++<10000 ){
    if( cnt%100==0 ) FUNC1("%d: %d\n", id, cnt);
    while( (FUNC5(DB_FILE, &db))!=SQLITE_OK ) FUNC2();
    FUNC4(db, "PRAGMA synchronous=OFF", 0, 0, 0);
    /* integrity_check(db, id); */
    if( all_stop ){ FUNC3(db); break; }
    /* fprintf(stderr, "%d: BEGIN\n", id); */
    rc = FUNC4(db, "INSERT INTO t1 VALUES('bogus data')", 0, 0, 0);
    /* fprintf(stderr, "%d: END rc=%d\n", id, rc); */
    FUNC3(db);
  }
  FUNC0(stderr, "Worker %d finished\n", id);
  return 0;
}