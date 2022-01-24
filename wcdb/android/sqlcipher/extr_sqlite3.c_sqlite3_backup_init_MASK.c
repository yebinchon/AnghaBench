#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ pDest; int iNext; TYPE_1__* pSrc; scalar_t__ isAttached; TYPE_3__* pSrcDb; TYPE_3__* pDestDb; } ;
typedef  TYPE_2__ sqlite3_backup ;
struct TYPE_16__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_14__ {int /*<<< orphan*/  nBackup; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int /*<<< orphan*/  SQLITE_NOMEM_BKPT ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ FUNC0 (TYPE_3__*,scalar_t__) ; 
 void* FUNC1 (TYPE_3__*,TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

sqlite3_backup *FUNC9(
  sqlite3* pDestDb,                     /* Database to write to */
  const char *zDestDb,                  /* Name of database within pDestDb */
  sqlite3* pSrcDb,                      /* Database connection to read from */
  const char *zSrcDb                    /* Name of database within pSrcDb */
){
  sqlite3_backup *p;                    /* Value to return */

#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(pSrcDb)||!sqlite3SafetyCheckOk(pDestDb) ){
    (void)SQLITE_MISUSE_BKPT;
    return 0;
  }
#endif

/* BEGIN SQLCIPHER */
#ifdef SQLITE_HAS_CODEC
  {
    extern int sqlcipher_find_db_index(sqlite3*, const char*);
    extern void sqlite3CodecGetKey(sqlite3*, int, void**, int*);
    int srcNKey, destNKey;
    void *zKey;

    sqlite3CodecGetKey(pSrcDb, sqlcipher_find_db_index(pSrcDb, zSrcDb), &zKey, &srcNKey);
    sqlite3CodecGetKey(pDestDb, sqlcipher_find_db_index(pDestDb, zDestDb), &zKey, &destNKey);
    zKey = NULL;

    if(srcNKey || destNKey) {
      sqlite3ErrorWithMsg(pDestDb, SQLITE_ERROR, "backup is not supported with encrypted databases");
      return NULL;
    }
  }
#endif
/* END SQLCIPHER */

  /* Lock the source database handle. The destination database
  ** handle is not locked in this routine, but it is locked in
  ** sqlite3_backup_step(). The user is required to ensure that no
  ** other thread accesses the destination handle for the duration
  ** of the backup operation.  Any attempt to use the destination
  ** database connection while a backup is in progress may cause
  ** a malfunction or a deadlock.
  */
  FUNC7(pSrcDb->mutex);
  FUNC7(pDestDb->mutex);

  if( pSrcDb==pDestDb ){
    FUNC3(
        pDestDb, SQLITE_ERROR, "source and destination must be distinct"
    );
    p = 0;
  }else {
    /* Allocate space for a new sqlite3_backup object...
    ** EVIDENCE-OF: R-64852-21591 The sqlite3_backup object is created by a
    ** call to sqlite3_backup_init() and is destroyed by a call to
    ** sqlite3_backup_finish(). */
    p = (sqlite3_backup *)FUNC4(sizeof(sqlite3_backup));
    if( !p ){
      FUNC2(pDestDb, SQLITE_NOMEM_BKPT);
    }
  }

  /* If the allocation succeeded, populate the new object. */
  if( p ){
    p->pSrc = FUNC1(pDestDb, pSrcDb, zSrcDb);
    p->pDest = FUNC1(pDestDb, pDestDb, zDestDb);
    p->pDestDb = pDestDb;
    p->pSrcDb = pSrcDb;
    p->iNext = 1;
    p->isAttached = 0;

    if( 0==p->pSrc || 0==p->pDest 
     || FUNC0(pDestDb, p->pDest)!=SQLITE_OK 
     ){
      /* One (or both) of the named databases did not exist or an OOM
      ** error was hit. Or there is a transaction open on the destination
      ** database. The error has already been written into the pDestDb 
      ** handle. All that is left to do here is free the sqlite3_backup 
      ** structure.  */
      FUNC6(p);
      p = 0;
    }
  }
  if( p ){
    p->pSrc->nBackup++;
  }

  FUNC8(pDestDb->mutex);
  FUNC8(pSrcDb->mutex);
  return p;
}