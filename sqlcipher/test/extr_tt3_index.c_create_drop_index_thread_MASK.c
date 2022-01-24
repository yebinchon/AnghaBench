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
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC7(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */

  while( !FUNC6(&err) ){
    FUNC2(&err, &db, "test.db", 0);

    FUNC4(&err, &db, 
      "DROP INDEX IF EXISTS i1;"
      "DROP INDEX IF EXISTS i2;"
      "DROP INDEX IF EXISTS i3;"
      "DROP INDEX IF EXISTS i4;"

      "CREATE INDEX IF NOT EXISTS i1 ON t11(a);"
      "CREATE INDEX IF NOT EXISTS i2 ON t11(b);"
      "CREATE INDEX IF NOT EXISTS i3 ON t11(c);"
      "CREATE INDEX IF NOT EXISTS i4 ON t11(d);"

      "SELECT * FROM t11 ORDER BY a;"
      "SELECT * FROM t11 ORDER BY b;"
      "SELECT * FROM t11 ORDER BY c;"
      "SELECT * FROM t11 ORDER BY d;"
    );
    FUNC0(&err, SQLITE_LOCKED);

    FUNC1(&err, &db);
  }

  FUNC3(&err);
  return FUNC5("ok");
}