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
typedef  int i64 ;
struct TYPE_13__ {scalar_t__ rc; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  SQLITE_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 char* FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC8(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  int iArg = FUNC0(pArg);

  int i1 = 0;
  int i2 = 0;

  FUNC4(&err, &db, "test.db", 0);
  while( !FUNC7(&err) ){
    i64 i = (i1 % 4);
    if( iArg ){
      FUNC2(&err, &db);
      FUNC4(&err, &db, "test.db", 0);
    }
    FUNC3(&err, &db, "DELETE FROM t1 WHERE (rowid % 4)==:i", &i);
    i1++;
    if( err.rc ) i2++;
    FUNC1(&err, SQLITE_LOCKED);
  }
  FUNC2(&err, &db);
  FUNC5(&err);
  return FUNC6("deleted from t1 %d/%d attempts", i2, i1);
}