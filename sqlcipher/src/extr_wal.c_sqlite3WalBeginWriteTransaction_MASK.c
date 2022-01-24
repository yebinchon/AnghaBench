#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WalIndexHdr ;
struct TYPE_6__ {scalar_t__ readLock; int writeLock; scalar_t__ iReCksum; int /*<<< orphan*/  hdr; scalar_t__ readOnly; } ;
typedef  TYPE_1__ Wal ;

/* Variables and functions */
 int SQLITE_BUSY_SNAPSHOT ; 
 int SQLITE_READONLY ; 
 int /*<<< orphan*/  WAL_WRITE_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(Wal *pWal){
  int rc;

  /* Cannot start a write transaction without first holding a read
  ** transaction. */
  FUNC0( pWal->readLock>=0 );
  FUNC0( pWal->writeLock==0 && pWal->iReCksum==0 );

  if( pWal->readOnly ){
    return SQLITE_READONLY;
  }

  /* Only one writer allowed at a time.  Get the write lock.  Return
  ** SQLITE_BUSY if unable.
  */
  rc = FUNC3(pWal, WAL_WRITE_LOCK, 1);
  if( rc ){
    return rc;
  }
  pWal->writeLock = 1;

  /* If another connection has written to the database file since the
  ** time the read transaction on this connection was started, then
  ** the write is disallowed.
  */
  if( FUNC1(&pWal->hdr, (void *)FUNC2(pWal), sizeof(WalIndexHdr))!=0 ){
    FUNC4(pWal, WAL_WRITE_LOCK, 1);
    pWal->writeLock = 0;
    rc = SQLITE_BUSY_SNAPSHOT;
  }

  return rc;
}