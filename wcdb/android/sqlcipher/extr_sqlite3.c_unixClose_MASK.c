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
struct TYPE_7__ {scalar_t__ nLock; scalar_t__ bProcessLock; int /*<<< orphan*/  pLockMutex; } ;
typedef  TYPE_1__ unixInodeInfo ;
struct TYPE_8__ {TYPE_1__* pInode; } ;
typedef  TYPE_2__ unixFile ;
typedef  int /*<<< orphan*/  sqlite3_file ;

/* Variables and functions */
 int /*<<< orphan*/  NO_LOCK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(sqlite3_file *id){
  int rc = SQLITE_OK;
  unixFile *pFile = (unixFile *)id;
  unixInodeInfo *pInode = pFile->pInode;

  FUNC0( pInode!=0 );
  FUNC10(pFile);
  FUNC9(id, NO_LOCK);
  FUNC0( FUNC7(pFile) );
  FUNC6();

  /* unixFile.pInode is always valid here. Otherwise, a different close
  ** routine (e.g. nolockClose()) would be called instead.
  */
  FUNC0( pFile->pInode->nLock>0 || pFile->pInode->bProcessLock==0 );
  FUNC4(pInode->pLockMutex);
  if( pInode->nLock ){
    /* If there are outstanding locks, do not actually close the file just
    ** yet because that would clear those locks.  Instead, add the file
    ** descriptor to pInode->pUnused list.  It will be automatically closed 
    ** when the last lock is cleared.
    */
    FUNC3(pFile);
  }
  FUNC5(pInode->pLockMutex);
  FUNC2(pFile);
  rc = FUNC1(id);
  FUNC8();
  return rc;
}