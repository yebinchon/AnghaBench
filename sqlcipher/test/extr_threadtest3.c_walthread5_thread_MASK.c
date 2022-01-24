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
 int FUNC1 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 

__attribute__((used)) static char *FUNC5(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  i64 nRow;

  FUNC2(&err, &db, "test.db", 0);
  nRow = FUNC1(&err, &db, "SELECT count(*) FROM t1");
  FUNC0(&err, &db);

  if( nRow!=65536 ) FUNC4(&err, "Bad row count: %d", (int)nRow);
  FUNC3(&err);
  return 0;
}