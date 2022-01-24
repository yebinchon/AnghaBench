#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* db; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ Btree ;

/* Variables and functions */
 int /*<<< orphan*/  MASTER_ROOT ; 
 int /*<<< orphan*/  READ_LOCK ; 
 int SQLITE_LOCKED_SHAREDCACHE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(Btree *p){
  int rc;
  FUNC0( FUNC4(p->db->mutex) );
  FUNC2(p);
  rc = FUNC1(p, MASTER_ROOT, READ_LOCK);
  FUNC0( rc==SQLITE_OK || rc==SQLITE_LOCKED_SHAREDCACHE );
  FUNC3(p);
  return rc;
}