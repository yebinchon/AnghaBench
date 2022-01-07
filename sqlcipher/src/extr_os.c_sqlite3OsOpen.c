
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* xOpen ) (TYPE_1__*,char const*,TYPE_2__*,int,int*) ;} ;
typedef TYPE_1__ sqlite3_vfs ;
struct TYPE_8__ {scalar_t__ pMethods; } ;
typedef TYPE_2__ sqlite3_file ;


 int DO_OS_MALLOC_TEST (int ) ;
 int SQLITE_OK ;
 int assert (int) ;
 int stub1 (TYPE_1__*,char const*,TYPE_2__*,int,int*) ;

int sqlite3OsOpen(
  sqlite3_vfs *pVfs,
  const char *zPath,
  sqlite3_file *pFile,
  int flags,
  int *pFlagsOut
){
  int rc;
  DO_OS_MALLOC_TEST(0);




  rc = pVfs->xOpen(pVfs, zPath, pFile, flags & 0x87f7f, pFlagsOut);
  assert( rc==SQLITE_OK || pFile->pMethods==0 );
  return rc;
}
