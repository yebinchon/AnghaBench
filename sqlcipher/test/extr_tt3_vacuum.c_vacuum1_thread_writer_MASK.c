#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC7(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  FUNC3(&err, &db, "test.db", 0);
  i64 i = 0;

  while( !FUNC6(&err) ){
    i++;

    /* Insert lots of rows. Then delete some. */
    FUNC2(&err, &db, 
        "WITH loop(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM loop WHERE i<100) "
        "INSERT INTO t1 SELECT randomblob(50), randomblob(2500) FROM loop"
    );

    /* Delete lots of rows */
    FUNC2(&err, &db, "DELETE FROM t1 WHERE rowid = :i", &i);
    FUNC0(&err, SQLITE_LOCKED);

    /* Select the rows */
    FUNC2(&err, &db, "SELECT * FROM t1 ORDER BY x");
    FUNC0(&err, SQLITE_LOCKED);
  }

  FUNC1(&err, &db);
  FUNC4(&err);
  return FUNC5("ok");
}