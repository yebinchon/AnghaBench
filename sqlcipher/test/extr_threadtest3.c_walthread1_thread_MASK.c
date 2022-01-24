#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,char*) ; 
 char* FUNC2 (TYPE_2__*,TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,char*) ; 
 char* FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC11(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  int nIter = 0;                  /* Iterations so far */

  FUNC4(&err, &db, "test.db", 0);
  while( !FUNC10(&err) ){
    const char *azSql[] = {
      "SELECT md5sum(x) FROM t1 WHERE rowid != (SELECT max(rowid) FROM t1)",
      "SELECT x FROM t1 WHERE rowid = (SELECT max(rowid) FROM t1)",
    };
    char *z1, *z2, *z3;

    FUNC1(&err, &db, "BEGIN");
    FUNC3(&err, &db);
    z1 = FUNC2(&err, &db, 1, azSql[0]);
    z2 = FUNC2(&err, &db, 2, azSql[1]);
    z3 = FUNC2(&err, &db, 3, azSql[0]);
    FUNC1(&err, &db, "COMMIT");

    if( FUNC8(z1, z2) || FUNC8(z1, z3) ){
      FUNC9(&err, "Failed read: %s %s %s", z1, z2, z3);
    }

    FUNC6(&err, &db,
        "BEGIN;"
          "INSERT INTO t1 VALUES(randomblob(100));"
          "INSERT INTO t1 VALUES(randomblob(100));"
          "INSERT INTO t1 SELECT md5sum(x) FROM t1;"
        "COMMIT;"
    );
    nIter++;
  }
  FUNC0(&err, &db);

  FUNC5(&err);
  return FUNC7("%d iterations", nIter);
}