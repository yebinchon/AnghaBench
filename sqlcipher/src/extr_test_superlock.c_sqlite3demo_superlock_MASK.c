#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  db; scalar_t__ bWal; } ;
struct TYPE_8__ {int (* xBusy ) (void*,int) ;void* pBusyArg; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SuperlockBusy ;
typedef  TYPE_2__ Superlock ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_READWRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  superlockBusyHandler ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC8(
  const char *zPath,              /* Path to database file to lock */
  const char *zVfs,               /* VFS to use to access database file */
  int (*xBusy)(void*,int),        /* Busy handler callback */
  void *pBusyArg,                 /* Context arg for busy handler */
  void **ppLock                   /* OUT: Context to pass to superunlock() */
){
  SuperlockBusy busy = {0, 0, 0}; /* Busy handler wrapper object */
  int rc;                         /* Return code */
  Superlock *pLock;

  pLock = FUNC3(sizeof(Superlock));
  if( !pLock ) return SQLITE_NOMEM;
  FUNC0(pLock, 0, sizeof(Superlock));

  /* Open a database handle on the file to superlock. */
  rc = FUNC4(
      zPath, &pLock->db, SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE, zVfs
  );

  /* Install a busy-handler and execute a BEGIN EXCLUSIVE. If this is not
  ** a WAL database, this is all we need to do.  
  **
  ** A wrapper function is used to invoke the busy-handler instead of
  ** registering the busy-handler function supplied by the user directly
  ** with SQLite. This is because the same busy-handler function may be
  ** invoked directly later on when attempting to obtain the extra locks
  ** required in WAL mode. By using the wrapper, we are able to guarantee
  ** that the "nBusy" integer parameter passed to the users busy-handler
  ** represents the total number of busy-handler invocations made within
  ** this call to sqlite3demo_superlock(), including any made during the
  ** "BEGIN EXCLUSIVE".
  */
  if( rc==SQLITE_OK ){
    busy.xBusy = xBusy;
    busy.pBusyArg = pBusyArg;
    FUNC1(pLock->db, superlockBusyHandler, (void *)&busy);
    rc = FUNC2(pLock->db, "BEGIN EXCLUSIVE", 0, 0, 0);
  }

  /* If the BEGIN EXCLUSIVE was executed successfully and this is a WAL
  ** database, call superlockWalLock() to obtain the extra locks required
  ** to prevent readers, writers and/or checkpointers from accessing the
  ** db while this process is holding the superlock.
  **
  ** Before attempting any WAL locks, commit the transaction started above
  ** to drop the WAL read and write locks currently held. Otherwise, the
  ** new WAL locks may conflict with the old.
  */
  if( rc==SQLITE_OK ){
    if( SQLITE_OK==(rc = FUNC6(pLock)) && pLock->bWal ){
      rc = FUNC2(pLock->db, "COMMIT", 0, 0, 0);
      if( rc==SQLITE_OK ){
        rc = FUNC7(pLock->db, &busy);
      }
    }
  }

  if( rc!=SQLITE_OK ){
    FUNC5(pLock);
    *ppLock = 0;
  }else{
    *ppLock = pLock;
  }

  return rc;
}