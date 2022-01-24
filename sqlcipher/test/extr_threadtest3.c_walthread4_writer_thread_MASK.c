#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC6(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  i64 iRow = 1;

  FUNC2(&err, &db, "test.db", 0);
  FUNC4(&err, &db, "PRAGMA wal_autocheckpoint = 15;");
  while( !FUNC5(&err) ){
    FUNC1(
        &err, &db, "REPLACE INTO t1 VALUES(:iRow, randomblob(300))", &iRow
    );
    iRow++;
    if( iRow==10 ) iRow = 0;
  }
  FUNC0(&err, &db);

  FUNC3(&err);
  return 0;
}