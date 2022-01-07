
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_file ;
struct TYPE_2__ {scalar_t__ sz; scalar_t__ szMax; scalar_t__ aData; } ;
typedef TYPE_1__ MemFile ;


 int SQLITE_FULL ;
 int SQLITE_OK ;
 int memcpy (scalar_t__,void const*,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int memWrite(
  sqlite3_file *pFile,
  const void *z,
  int iAmt,
  sqlite_int64 iOfst
){
  MemFile *p = (MemFile *)pFile;
  if( iOfst+iAmt>p->sz ){
    if( iOfst+iAmt>p->szMax ) return SQLITE_FULL;
    if( iOfst>p->sz ) memset(p->aData+p->sz, 0, iOfst-p->sz);
    p->sz = iOfst+iAmt;
  }
  memcpy(p->aData+iOfst, z, iAmt);
  return SQLITE_OK;
}
