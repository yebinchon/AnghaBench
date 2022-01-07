
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nSize; int * zAlloc; } ;
typedef TYPE_1__ tmp_file ;
typedef int sqlite_int64 ;
typedef int sqlite3_file ;


 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_OK ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static int tmpRead(
  sqlite3_file *pFile,
  void *zBuf,
  int iAmt,
  sqlite_int64 iOfst
){
  tmp_file *pTmp = (tmp_file *)pFile;
  if( (iAmt+iOfst)>pTmp->nSize ){
    return SQLITE_IOERR_SHORT_READ;
  }
  memcpy(zBuf, &pTmp->zAlloc[iOfst], iAmt);
  return SQLITE_OK;
}
