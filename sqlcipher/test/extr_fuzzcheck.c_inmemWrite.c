
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


 scalar_t__ MX_FILE_SZ ;
 int SQLITE_FULL ;
 int SQLITE_OK ;
 int memcpy (scalar_t__,void const*,int) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ safe_realloc (scalar_t__,int) ;

__attribute__((used)) static int inmemWrite(
  sqlite3_file *pFile,
  const void *pData,
  int iAmt,
  sqlite3_int64 iOfst
){
  VHandle *pHandle = (VHandle*)pFile;
  VFile *pVFile = pHandle->pVFile;
  if( iOfst+iAmt > pVFile->sz ){
    if( iOfst+iAmt >= MX_FILE_SZ ){
      return SQLITE_FULL;
    }
    pVFile->a = safe_realloc(pVFile->a, (int)(iOfst+iAmt));
    if( iOfst > pVFile->sz ){
      memset(pVFile->a + pVFile->sz, 0, (int)(iOfst - pVFile->sz));
    }
    pVFile->sz = (int)(iOfst + iAmt);
  }
  memcpy(pVFile->a + iOfst, pData, iAmt);
  return SQLITE_OK;
}
