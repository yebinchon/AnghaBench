#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Threadset ;
struct TYPE_18__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ Sqlite ;
typedef  TYPE_3__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  create_drop_index_thread ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(int nMs){
  Error err = {0};
  Sqlite db = {0};
  Threadset threads = {0};

  FUNC3(&err, &db, "test.db", 1);
  FUNC6(&err, &db, 
     "CREATE TABLE t11(a, b, c, d);"
     "WITH data(x) AS (SELECT 1 UNION ALL SELECT x+1 FROM data WHERE x<100) "
     "INSERT INTO t11 SELECT x,x,x,x FROM data;"
  );
  FUNC0(&err, &db);

  FUNC5(&err, nMs);

  FUNC7(1);
  FUNC2(&err, &threads, create_drop_index_thread, 0);
  FUNC2(&err, &threads, create_drop_index_thread, 0);
  FUNC2(&err, &threads, create_drop_index_thread, 0);
  FUNC2(&err, &threads, create_drop_index_thread, 0);
  FUNC2(&err, &threads, create_drop_index_thread, 0);

  FUNC1(&err, &threads);
  FUNC7(0);
  FUNC4(&err);
}