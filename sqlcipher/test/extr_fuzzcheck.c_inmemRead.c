
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_file ;
struct TYPE_3__ {TYPE_2__* pVFile; } ;
typedef TYPE_1__ VHandle ;
struct TYPE_4__ {scalar_t__ sz; scalar_t__ a; } ;
typedef TYPE_2__ VFile ;


 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_OK ;
 int memcpy (void*,scalar_t__,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int inmemRead(
  sqlite3_file *pFile,
  void *pData,
  int iAmt,
  sqlite3_int64 iOfst
){
  VHandle *pHandle = (VHandle*)pFile;
  VFile *pVFile = pHandle->pVFile;
  if( iOfst<0 || iOfst>=pVFile->sz ){
    memset(pData, 0, iAmt);
    return SQLITE_IOERR_SHORT_READ;
  }
  if( iOfst+iAmt>pVFile->sz ){
    memset(pData, 0, iAmt);
    iAmt = (int)(pVFile->sz - iOfst);
    memcpy(pData, pVFile->a + iOfst, iAmt);
    return SQLITE_IOERR_SHORT_READ;
  }
  memcpy(pData, pVFile->a + iOfst, iAmt);
  return SQLITE_OK;
}
