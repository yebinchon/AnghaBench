
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
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int memTruncate(sqlite3_file *pFile, sqlite_int64 size){
  MemFile *p = (MemFile *)pFile;
  if( size>p->sz ){
    if( size>p->szMax ) return SQLITE_FULL;
    memset(p->aData+p->sz, 0, size-p->sz);
  }
  p->sz = size;
  return SQLITE_OK;
}
