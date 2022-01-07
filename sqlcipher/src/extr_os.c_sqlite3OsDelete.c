
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xDelete ) (TYPE_1__*,char const*,int) ;} ;
typedef TYPE_1__ sqlite3_vfs ;


 int DO_OS_MALLOC_TEST (int ) ;
 int assert (int) ;
 int stub1 (TYPE_1__*,char const*,int) ;

int sqlite3OsDelete(sqlite3_vfs *pVfs, const char *zPath, int dirSync){
  DO_OS_MALLOC_TEST(0);
  assert( dirSync==0 || dirSync==1 );
  return pVfs->xDelete(pVfs, zPath, dirSync);
}
