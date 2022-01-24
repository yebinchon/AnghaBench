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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WALTHREAD3_NTHREAD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  walthread3_thread ; 

__attribute__((used)) static void FUNC8(int nMs){
  Error err = {0};
  Sqlite db = {0};
  Threadset threads = {0};
  int i;

  FUNC4(&err, &db, "test.db", 1);
  FUNC7(&err, &db, 
      "PRAGMA journal_mode = WAL;"
      "CREATE TABLE t1(cnt PRIMARY KEY, sum1, sum2);"
      "CREATE INDEX i1 ON t1(sum1);"
      "CREATE INDEX i2 ON t1(sum2);"
      "INSERT INTO t1 VALUES(0, 0, 0);"
  );
  FUNC1(&err, &db);

  FUNC6(&err, nMs);
  for(i=0; i<WALTHREAD3_NTHREAD; i++){
    FUNC3(&err, &threads, walthread3_thread, FUNC0(i));
  }
  FUNC2(&err, &threads);

  FUNC5(&err);
}