
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nAlloc; char* zAlloc; int nSize; } ;
typedef TYPE_1__ tmp_file ;
typedef int sqlite_int64 ;
typedef int sqlite3_file ;


 scalar_t__ MAX (int,int) ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (char*,void const*,int) ;
 char* sqlite3_realloc (char*,int) ;

__attribute__((used)) static int tmpWrite(
  sqlite3_file *pFile,
  const void *zBuf,
  int iAmt,
  sqlite_int64 iOfst
){
  tmp_file *pTmp = (tmp_file *)pFile;
  if( (iAmt+iOfst)>pTmp->nAlloc ){
    int nNew = (int)(2*(iAmt+iOfst+pTmp->nAlloc));
    char *zNew = sqlite3_realloc(pTmp->zAlloc, nNew);
    if( !zNew ){
      return SQLITE_NOMEM;
    }
    pTmp->zAlloc = zNew;
    pTmp->nAlloc = nNew;
  }
  memcpy(&pTmp->zAlloc[iOfst], zBuf, iAmt);
  pTmp->nSize = (int)MAX(pTmp->nSize, iOfst+iAmt);
  return SQLITE_OK;
}
