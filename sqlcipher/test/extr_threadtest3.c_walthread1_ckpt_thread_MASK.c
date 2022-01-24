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
struct TYPE_13__ {scalar_t__ rc; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_BUSY ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 char* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static char *FUNC8(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  int nCkpt = 0;                  /* Checkpoints so far */

  FUNC3(&err, &db, "test.db", 0);
  while( !FUNC6(&err) ){
    FUNC7(500*1000);
    FUNC2(&err, &db, "PRAGMA wal_checkpoint");
    if( err.rc==SQLITE_OK ) nCkpt++;
    FUNC0(&err, SQLITE_BUSY);
  }
  FUNC1(&err, &db);

  FUNC4(&err);
  return FUNC5("%d checkpoints", nCkpt);
}