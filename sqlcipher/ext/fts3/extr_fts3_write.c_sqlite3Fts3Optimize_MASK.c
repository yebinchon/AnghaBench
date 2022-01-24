#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(Fts3Table *p){
  int rc;
  rc = FUNC2(p->db, "SAVEPOINT fts3", 0, 0, 0);
  if( rc==SQLITE_OK ){
    rc = FUNC0(p, 1);
    if( rc==SQLITE_OK || rc==SQLITE_DONE ){
      int rc2 = FUNC2(p->db, "RELEASE fts3", 0, 0, 0);
      if( rc2!=SQLITE_OK ) rc = rc2;
    }else{
      FUNC2(p->db, "ROLLBACK TO fts3", 0, 0, 0);
      FUNC2(p->db, "RELEASE fts3", 0, 0, 0);
    }
  }
  FUNC1(p);
  return rc;
}