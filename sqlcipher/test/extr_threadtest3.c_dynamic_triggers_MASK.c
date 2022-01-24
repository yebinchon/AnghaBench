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
 int /*<<< orphan*/  dynamic_triggers_1 ; 
 int /*<<< orphan*/  dynamic_triggers_2 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(int nMs){
  Error err = {0};
  Sqlite db = {0};
  Threadset threads = {0};

  FUNC3(&err, &db, "test.db", 1);
  FUNC7(&err, &db, 
      "PRAGMA page_size = 1024;"
      "PRAGMA journal_mode = WAL;"
      "CREATE TABLE t1(x, y);"
      "CREATE TABLE t2(x, y);"
      "CREATE TABLE t3(x, y);"
      "CREATE TABLE t4(x, y);"
      "CREATE TABLE t5(x, y);"
      "CREATE TABLE t6(x, y);"
      "CREATE TABLE t7(x, y);"
      "CREATE TABLE t8(x, y);"
      "CREATE TABLE t9(x, y);"
  );
  FUNC0(&err, &db);

  FUNC5(&err, nMs);

  FUNC8(1);
  FUNC2(&err, &threads, dynamic_triggers_2, 0);
  FUNC2(&err, &threads, dynamic_triggers_2, 0);

  FUNC6(2);
  FUNC8(0);

  FUNC2(&err, &threads, dynamic_triggers_2, 0);
  FUNC2(&err, &threads, dynamic_triggers_1, 0);

  FUNC1(&err, &threads);

  FUNC4(&err);
}