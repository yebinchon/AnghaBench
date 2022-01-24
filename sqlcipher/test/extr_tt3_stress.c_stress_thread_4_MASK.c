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
struct TYPE_13__ {scalar_t__ rc; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,char*) ; 
 char* FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC8(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  int i1 = 0;
  int i2 = 0;
  int iArg = FUNC0(pArg);

  FUNC3(&err, &db, "test.db", 0);
  while( !FUNC7(&err) ){
    if( iArg ){
      FUNC2(&err, &db);
      FUNC3(&err, &db, "test.db", 0);
    }
    FUNC5(&err, &db, 
        "WITH loop(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM loop LIMIT 200) "
        "INSERT INTO t1 VALUES(randomblob(60), randomblob(60));"
    );
    i1++;
    if( err.rc ) i2++;
    FUNC1(&err, SQLITE_LOCKED);
    FUNC1(&err, SQLITE_ERROR);
  }
  FUNC2(&err, &db);
  FUNC4(&err);
  return FUNC6("wrote t1 %d/%d attempts", i2, i1);
}