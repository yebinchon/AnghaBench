#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* pBt; } ;
struct TYPE_6__ {int /*<<< orphan*/  incrVacuum; int /*<<< orphan*/  autoVacuum; } ;
typedef  TYPE_2__ Btree ;

/* Variables and functions */
 int BTREE_AUTOVACUUM_FULL ; 
 int BTREE_AUTOVACUUM_INCR ; 
 int BTREE_AUTOVACUUM_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2(Btree *p){
#ifdef SQLITE_OMIT_AUTOVACUUM
  return BTREE_AUTOVACUUM_NONE;
#else
  int rc;
  FUNC0(p);
  rc = (
    (!p->pBt->autoVacuum)?BTREE_AUTOVACUUM_NONE:
    (!p->pBt->incrVacuum)?BTREE_AUTOVACUUM_FULL:
    BTREE_AUTOVACUUM_INCR
  );
  FUNC1(p);
  return rc;
#endif
}