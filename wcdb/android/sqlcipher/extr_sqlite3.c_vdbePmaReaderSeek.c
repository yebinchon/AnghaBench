
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
struct TYPE_15__ {scalar_t__ aMap; int iReadOff; int nBuffer; int * aBuffer; int pFd; int iEof; TYPE_1__* pIncr; } ;
struct TYPE_14__ {TYPE_2__* pSorter; } ;
struct TYPE_13__ {int pFd; int iEof; } ;
struct TYPE_12__ {int pgsz; } ;
struct TYPE_11__ {scalar_t__ bEof; } ;
typedef TYPE_3__ SorterFile ;
typedef TYPE_4__ SortSubtask ;
typedef TYPE_5__ PmaReader ;


 int SQLITE_IOERR_READ ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ sqlite3FaultSim (int) ;
 scalar_t__ sqlite3Malloc (int) ;
 int sqlite3OsRead (int ,int *,int,int) ;
 int sqlite3OsUnfetch (int ,int ,scalar_t__) ;
 int testcase (int) ;
 int vdbeSorterMapFile (TYPE_4__*,TYPE_3__*,scalar_t__*) ;

__attribute__((used)) static int vdbePmaReaderSeek(
  SortSubtask *pTask,
  PmaReader *pReadr,
  SorterFile *pFile,
  i64 iOff
){
  int rc = SQLITE_OK;

  assert( pReadr->pIncr==0 || pReadr->pIncr->bEof==0 );

  if( sqlite3FaultSim(201) ) return SQLITE_IOERR_READ;
  if( pReadr->aMap ){
    sqlite3OsUnfetch(pReadr->pFd, 0, pReadr->aMap);
    pReadr->aMap = 0;
  }
  pReadr->iReadOff = iOff;
  pReadr->iEof = pFile->iEof;
  pReadr->pFd = pFile->pFd;

  rc = vdbeSorterMapFile(pTask, pFile, &pReadr->aMap);
  if( rc==SQLITE_OK && pReadr->aMap==0 ){
    int pgsz = pTask->pSorter->pgsz;
    int iBuf = pReadr->iReadOff % pgsz;
    if( pReadr->aBuffer==0 ){
      pReadr->aBuffer = (u8*)sqlite3Malloc(pgsz);
      if( pReadr->aBuffer==0 ) rc = SQLITE_NOMEM_BKPT;
      pReadr->nBuffer = pgsz;
    }
    if( rc==SQLITE_OK && iBuf ){
      int nRead = pgsz - iBuf;
      if( (pReadr->iReadOff + nRead) > pReadr->iEof ){
        nRead = (int)(pReadr->iEof - pReadr->iReadOff);
      }
      rc = sqlite3OsRead(
          pReadr->pFd, &pReadr->aBuffer[iBuf], nRead, pReadr->iReadOff
      );
      testcase( rc!=SQLITE_OK );
    }
  }

  return rc;
}
