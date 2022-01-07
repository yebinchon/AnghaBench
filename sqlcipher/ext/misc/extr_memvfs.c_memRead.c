
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_file ;
struct TYPE_2__ {scalar_t__ aData; } ;
typedef TYPE_1__ MemFile ;


 int SQLITE_OK ;
 int memcpy (void*,scalar_t__,int) ;

__attribute__((used)) static int memRead(
  sqlite3_file *pFile,
  void *zBuf,
  int iAmt,
  sqlite_int64 iOfst
){
  MemFile *p = (MemFile *)pFile;
  memcpy(zBuf, p->aData+iOfst, iAmt);
  return SQLITE_OK;
}
