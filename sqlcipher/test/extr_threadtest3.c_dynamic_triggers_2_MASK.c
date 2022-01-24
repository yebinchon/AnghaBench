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
typedef  int i64 ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC6(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  i64 iVal = 0;
  int nInsert = 0;
  int nDelete = 0;

  FUNC2(&err, &db, "test.db", 0);
  while( !FUNC5(&err) ){
    do {
      iVal = (iVal+1)%100;
      FUNC1(&err, &db, "INSERT INTO t1 VALUES(:iX, :iY+1)", &iVal, &iVal);
      nInsert++;
    } while( iVal );

    do {
      iVal = (iVal+1)%100;
      FUNC1(&err, &db, "DELETE FROM t1 WHERE x = :iX", &iVal);
      nDelete++;
    } while( iVal );
  }
  FUNC0(&err, &db);

  FUNC3(&err);
  return FUNC4("%d inserts, %d deletes", nInsert, nDelete);
}