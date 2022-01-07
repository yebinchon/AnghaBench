
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
struct TYPE_11__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_15__ {int ioError; TYPE_3__* pQueueFirst; } ;
struct TYPE_14__ {TYPE_4__* pData; } ;
struct TYPE_13__ {char* zName; TYPE_2__* pBaseRead; } ;
struct TYPE_12__ {scalar_t__ op; scalar_t__ iOffset; int * zBuf; int nByte; TYPE_4__* pFileData; struct TYPE_12__* pNext; } ;
struct TYPE_10__ {int (* xFileSize ) (TYPE_2__*,scalar_t__*) ;int (* xRead ) (TYPE_2__*,void*,int,scalar_t__) ;} ;
typedef TYPE_3__ AsyncWrite ;
typedef TYPE_4__ AsyncFileData ;
typedef TYPE_5__ AsyncFile ;


 int ASYNC_MUTEX_QUEUE ;
 int ASYNC_TRACE (char*) ;
 scalar_t__ ASYNC_WRITE ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_OK ;
 TYPE_9__ async ;
 int async_mutex_enter (int ) ;
 int async_mutex_leave (int ) ;
 int memcpy (char*,int *,size_t) ;
 int stub1 (TYPE_2__*,scalar_t__*) ;
 int stub2 (TYPE_2__*,void*,int,scalar_t__) ;

__attribute__((used)) static int asyncRead(
  sqlite3_file *pFile,
  void *zOut,
  int iAmt,
  sqlite3_int64 iOffset
){
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;
  int rc = SQLITE_OK;
  sqlite3_int64 filesize = 0;
  sqlite3_file *pBase = p->pBaseRead;
  sqlite3_int64 iAmt64 = (sqlite3_int64)iAmt;


  async_mutex_enter(ASYNC_MUTEX_QUEUE);




  if( async.ioError!=SQLITE_OK ){
    rc = async.ioError;
    goto asyncread_out;
  }

  if( pBase->pMethods ){
    sqlite3_int64 nRead;
    rc = pBase->pMethods->xFileSize(pBase, &filesize);
    if( rc!=SQLITE_OK ){
      goto asyncread_out;
    }
    nRead = MIN(filesize - iOffset, iAmt64);
    if( nRead>0 ){
      rc = pBase->pMethods->xRead(pBase, zOut, (int)nRead, iOffset);
      ASYNC_TRACE(("READ %s %d bytes at %d\n", p->zName, nRead, iOffset));
    }
  }

  if( rc==SQLITE_OK ){
    AsyncWrite *pWrite;
    char *zName = p->zName;

    for(pWrite=async.pQueueFirst; pWrite; pWrite = pWrite->pNext){
      if( pWrite->op==ASYNC_WRITE && (
        (pWrite->pFileData==p) ||
        (zName && pWrite->pFileData->zName==zName)
      )){
        sqlite3_int64 nCopy;
        sqlite3_int64 nByte64 = (sqlite3_int64)pWrite->nByte;






        sqlite3_int64 iBeginOut = (pWrite->iOffset-iOffset);
        sqlite3_int64 iBeginIn = -iBeginOut;
        if( iBeginIn<0 ) iBeginIn = 0;
        if( iBeginOut<0 ) iBeginOut = 0;

        filesize = MAX(filesize, pWrite->iOffset+nByte64);

        nCopy = MIN(nByte64-iBeginIn, iAmt64-iBeginOut);
        if( nCopy>0 ){
          memcpy(&((char *)zOut)[iBeginOut], &pWrite->zBuf[iBeginIn], (size_t)nCopy);
          ASYNC_TRACE(("OVERREAD %d bytes at %d\n", nCopy, iBeginOut+iOffset));
        }
      }
    }
  }

asyncread_out:
  async_mutex_leave(ASYNC_MUTEX_QUEUE);
  if( rc==SQLITE_OK && filesize<(iOffset+iAmt) ){
    rc = SQLITE_IOERR_SHORT_READ;
  }
  return rc;
}
