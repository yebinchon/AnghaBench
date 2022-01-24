#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_7__ {scalar_t__ inTrans; scalar_t__ sharable; } ;
typedef  TYPE_1__ Btree ;

/* Variables and functions */
 scalar_t__ READ_LOCK ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_NONE ; 
 scalar_t__ WRITE_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(Btree *p, int iTab, u8 isWriteLock){
  int rc = SQLITE_OK;
  FUNC0( p->inTrans!=TRANS_NONE );
  if( p->sharable ){
    u8 lockType = READ_LOCK + isWriteLock;
    FUNC0( READ_LOCK+1==WRITE_LOCK );
    FUNC0( isWriteLock==0 || isWriteLock==1 );

    FUNC3(p);
    rc = FUNC1(p, iTab, lockType);
    if( rc==SQLITE_OK ){
      rc = FUNC2(p, iTab, lockType);
    }
    FUNC4(p);
  }
  return rc;
}