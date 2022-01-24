#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int CHECKPOINT_STARVATION_READMS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static char *FUNC8(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};

  FUNC2(&err, &db, "test.db", 0);
  while( !FUNC6(&err) ){
    i64 iCount1, iCount2;
    FUNC4(&err, &db, "BEGIN");
    iCount1 = FUNC1(&err, &db, "SELECT count(x) FROM t1");
    FUNC7(CHECKPOINT_STARVATION_READMS*1000);
    iCount2 = FUNC1(&err, &db, "SELECT count(x) FROM t1");
    FUNC4(&err, &db, "COMMIT");

    if( iCount1!=iCount2 ){
      FUNC5(&err, "Isolation failure - %lld %lld", iCount1, iCount2);
    }
  }
  FUNC0(&err, &db);

  FUNC3(&err);
  return 0;
}