
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_2__ {int sz; int aData; } ;
typedef TYPE_1__ MemFile ;


 int SQLITE_FCNTL_VFSNAME ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 char* sqlite3_mprintf (char*,int ,int ) ;

__attribute__((used)) static int memFileControl(sqlite3_file *pFile, int op, void *pArg){
  MemFile *p = (MemFile *)pFile;
  int rc = SQLITE_NOTFOUND;
  if( op==SQLITE_FCNTL_VFSNAME ){
    *(char**)pArg = sqlite3_mprintf("mem(%p,%lld)", p->aData, p->sz);
    rc = SQLITE_OK;
  }
  return rc;
}
