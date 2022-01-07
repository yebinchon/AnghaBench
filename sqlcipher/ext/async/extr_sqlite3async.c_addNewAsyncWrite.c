
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_6__ {int ioError; } ;
struct TYPE_5__ {int op; int nByte; char* zBuf; scalar_t__ pNext; int * pFileData; int iOffset; } ;
typedef TYPE_1__ AsyncWrite ;
typedef int AsyncFileData ;


 int ASYNC_CLOSE ;
 int SQLITE_IOERR ;
 int SQLITE_OK ;
 int addAsyncWrite (TYPE_1__*) ;
 TYPE_3__ async ;
 int memcpy (char*,char const*,int) ;
 TYPE_1__* sqlite3_malloc (int) ;

__attribute__((used)) static int addNewAsyncWrite(
  AsyncFileData *pFileData,
  int op,
  sqlite3_int64 iOffset,
  int nByte,
  const char *zByte
){
  AsyncWrite *p;
  if( op!=ASYNC_CLOSE && async.ioError ){
    return async.ioError;
  }
  p = sqlite3_malloc(sizeof(AsyncWrite) + (zByte?nByte:0));
  if( !p ){






    return SQLITE_IOERR;
  }
  p->op = op;
  p->iOffset = iOffset;
  p->nByte = nByte;
  p->pFileData = pFileData;
  p->pNext = 0;
  if( zByte ){
    p->zBuf = (char *)&p[1];
    memcpy(p->zBuf, zByte, nByte);
  }else{
    p->zBuf = 0;
  }
  addAsyncWrite(p);
  return SQLITE_OK;
}
