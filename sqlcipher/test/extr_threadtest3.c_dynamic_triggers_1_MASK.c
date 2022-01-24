#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC7(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  int nDrop = 0;
  int nCreate = 0;

  FUNC2(&err, &db, "test.db", 0);
  while( !FUNC6(&err) ){
    int i;

    for(i=1; i<9; i++){
      char *zSql = FUNC5(
        "CREATE TRIGGER itr%d BEFORE INSERT ON t%d BEGIN "
          "INSERT INTO t%d VALUES(new.x, new.y);"
        "END;", i, i, i+1
      );
      FUNC1(&err, &db, zSql);
      FUNC4(zSql);
      nCreate++;
    }

    for(i=1; i<9; i++){
      char *zSql = FUNC5(
        "CREATE TRIGGER dtr%d BEFORE DELETE ON t%d BEGIN "
          "DELETE FROM t%d WHERE x = old.x; "
        "END;", i, i, i+1
      );
      FUNC1(&err, &db, zSql);
      FUNC4(zSql);
      nCreate++;
    }

    for(i=1; i<9; i++){
      char *zSql = FUNC5("DROP TRIGGER itr%d", i);
      FUNC1(&err, &db, zSql);
      FUNC4(zSql);
      nDrop++;
    }

    for(i=1; i<9; i++){
      char *zSql = FUNC5("DROP TRIGGER dtr%d", i);
      FUNC1(&err, &db, zSql);
      FUNC4(zSql);
      nDrop++;
    }
  }
  FUNC0(&err, &db);

  FUNC3(&err);
  return FUNC5("%d created, %d dropped", nCreate, nDrop);
}