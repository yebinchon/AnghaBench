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
struct TYPE_5__ {scalar_t__ writeLock; scalar_t__ exclusiveMode; scalar_t__ readLock; scalar_t__ lockError; } ;
typedef  TYPE_1__ Wal ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 void* WAL_EXCLUSIVE_MODE ; 
 scalar_t__ WAL_HEAPMEMORY_MODE ; 
 scalar_t__ WAL_NORMAL_MODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC4(Wal *pWal, int op){
  int rc;
  FUNC1( pWal->writeLock==0 );
  FUNC1( pWal->exclusiveMode!=WAL_HEAPMEMORY_MODE || op==-1 );

  /* pWal->readLock is usually set, but might be -1 if there was a 
  ** prior error while attempting to acquire are read-lock. This cannot 
  ** happen if the connection is actually in exclusive mode (as no xShmLock
  ** locks are taken in this case). Nor should the pager attempt to
  ** upgrade to exclusive-mode following such an error.
  */
  FUNC1( pWal->readLock>=0 || pWal->lockError );
  FUNC1( pWal->readLock>=0 || (op<=0 && pWal->exclusiveMode==0) );

  if( op==0 ){
    if( pWal->exclusiveMode!=WAL_NORMAL_MODE ){
      pWal->exclusiveMode = WAL_NORMAL_MODE;
      if( FUNC2(pWal, FUNC0(pWal->readLock))!=SQLITE_OK ){
        pWal->exclusiveMode = WAL_EXCLUSIVE_MODE;
      }
      rc = pWal->exclusiveMode==WAL_NORMAL_MODE;
    }else{
      /* Already in locking_mode=NORMAL */
      rc = 0;
    }
  }else if( op>0 ){
    FUNC1( pWal->exclusiveMode==WAL_NORMAL_MODE );
    FUNC1( pWal->readLock>=0 );
    FUNC3(pWal, FUNC0(pWal->readLock));
    pWal->exclusiveMode = WAL_EXCLUSIVE_MODE;
    rc = 1;
  }else{
    rc = pWal->exclusiveMode==WAL_NORMAL_MODE;
  }
  return rc;
}