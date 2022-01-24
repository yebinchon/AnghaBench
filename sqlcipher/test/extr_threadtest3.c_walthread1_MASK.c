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
 int WALTHREAD1_NTHREAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  walthread1_ckpt_thread ; 
 int /*<<< orphan*/  walthread1_thread ; 

__attribute__((used)) static void FUNC7(int nMs){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  Threadset threads = {0};        /* Test threads */
  int i;                          /* Iterator variable */

  FUNC3(&err, &db, "test.db", 1);
  FUNC6(&err, &db,
      "PRAGMA journal_mode = WAL;"
      "CREATE TABLE t1(x PRIMARY KEY);"
      "INSERT INTO t1 VALUES(randomblob(100));"
      "INSERT INTO t1 VALUES(randomblob(100));"
      "INSERT INTO t1 SELECT md5sum(x) FROM t1;"
  );
  FUNC0(&err, &db);

  FUNC5(&err, nMs);
  for(i=0; i<WALTHREAD1_NTHREAD; i++){
    FUNC2(&err, &threads, walthread1_thread, 0);
  }
  FUNC2(&err, &threads, walthread1_ckpt_thread, 0);
  FUNC1(&err, &threads);

  FUNC4(&err);
}