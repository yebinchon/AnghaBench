#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_16__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 scalar_t__ WALTHREAD3_NTHREAD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,char*) ; 
 int FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC8(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  i64 iNextWrite;                 /* Next value this thread will write */
  int iArg = FUNC0(pArg);

  FUNC4(&err, &db, "test.db", 0);
  FUNC6(&err, &db, "PRAGMA wal_autocheckpoint = 10");

  iNextWrite = iArg+1;
  while( 1 ){
    i64 sum1;
    i64 sum2;
    int stop = 0;                 /* True to stop executing (test timed out) */

    while( 0==(stop = FUNC7(&err)) ){
      i64 iMax = FUNC2(&err, &db, "SELECT max(cnt) FROM t1");
      if( iMax+1==iNextWrite ) break;
    }
    if( stop ) break;

    sum1 = FUNC2(&err, &db, "SELECT sum(cnt) FROM t1");
    sum2 = FUNC2(&err, &db, "SELECT sum(sum1) FROM t1");
    FUNC2(&err, &db, 
        "INSERT INTO t1 VALUES(:iNextWrite, :iSum1, :iSum2)",
        &iNextWrite, &sum1, &sum2
    );
    FUNC3(&err, &db);

    iNextWrite += WALTHREAD3_NTHREAD;
  }

  FUNC1(&err, &db);
  FUNC5(&err);
  return 0;
}