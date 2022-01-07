
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_file ;
struct TYPE_2__ {scalar_t__ aData; } ;
typedef TYPE_1__ MemFile ;


 int SQLITE_OK ;

__attribute__((used)) static int memFetch(
  sqlite3_file *pFile,
  sqlite3_int64 iOfst,
  int iAmt,
  void **pp
){
  MemFile *p = (MemFile *)pFile;
  *pp = (void*)(p->aData + iOfst);
  return SQLITE_OK;
}
