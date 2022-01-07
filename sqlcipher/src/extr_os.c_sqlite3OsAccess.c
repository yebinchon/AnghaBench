
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xAccess ) (TYPE_1__*,char const*,int,int*) ;} ;
typedef TYPE_1__ sqlite3_vfs ;


 int DO_OS_MALLOC_TEST (int ) ;
 int stub1 (TYPE_1__*,char const*,int,int*) ;

int sqlite3OsAccess(
  sqlite3_vfs *pVfs,
  const char *zPath,
  int flags,
  int *pResOut
){
  DO_OS_MALLOC_TEST(0);
  return pVfs->xAccess(pVfs, zPath, flags, pResOut);
}
