#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Threadset ;
struct TYPE_22__ {scalar_t__ eMode; int nMaxFrame; } ;
struct TYPE_21__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_20__ {int /*<<< orphan*/  db; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ Sqlite ;
typedef  TYPE_3__ Error ;
typedef  TYPE_4__ CheckpointStarvationCtx ;

/* Variables and functions */
 int CHECKPOINT_STARVATION_READMS ; 
 scalar_t__ SQLITE_CHECKPOINT_PASSIVE ; 
 int /*<<< orphan*/  checkpoint_starvation_reader ; 
 int /*<<< orphan*/  checkpoint_starvation_walhook ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(int nMs, CheckpointStarvationCtx *p){
  Error err = {0};
  Sqlite db = {0};
  Threadset threads = {0};
  int nInsert = 0;
  int i;

  FUNC3(&err, &db, "test.db", 1);
  FUNC7(&err, &db, 
      "PRAGMA page_size = 1024;"
      "PRAGMA journal_mode = WAL;"
      "CREATE TABLE t1(x);"
  );

  FUNC6(&err, nMs);

  for(i=0; i<4; i++){
    FUNC2(&err, &threads, checkpoint_starvation_reader, 0);
    FUNC10(CHECKPOINT_STARVATION_READMS*1000/4);
  }

  FUNC8(db.db, checkpoint_starvation_walhook, (void *)p);
  while( !FUNC9(&err) ){
    FUNC7(&err, &db, "INSERT INTO t1 VALUES(randomblob(1200))");
    nInsert++;
  }

  FUNC5(" Checkpoint mode  : %s\n",
      p->eMode==SQLITE_CHECKPOINT_PASSIVE ? "PASSIVE" : "RESTART"
  );
  FUNC5(" Peak WAL         : %d frames\n", p->nMaxFrame);
  FUNC5(" Transaction count: %d transactions\n", nInsert);

  FUNC1(&err, &threads);
  FUNC0(&err, &db);
  FUNC4(&err);
}