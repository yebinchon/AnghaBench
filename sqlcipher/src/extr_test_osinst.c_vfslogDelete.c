
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef scalar_t__ sqlite3_uint64 ;
struct TYPE_3__ {int (* xDelete ) (TYPE_1__*,char const*,int) ;} ;


 int OS_DELETE ;
 TYPE_1__* REALVFS (int *) ;
 int stub1 (TYPE_1__*,char const*,int) ;
 int vfslog_call (int *,int ,int ,scalar_t__,int,int,int ) ;
 int vfslog_string (int *,char const*) ;
 scalar_t__ vfslog_time () ;

__attribute__((used)) static int vfslogDelete(sqlite3_vfs *pVfs, const char *zPath, int dirSync){
  int rc;
  sqlite3_uint64 t;
  t = vfslog_time();
  rc = REALVFS(pVfs)->xDelete(REALVFS(pVfs), zPath, dirSync);
  t = vfslog_time() - t;
  vfslog_call(pVfs, OS_DELETE, 0, t, rc, dirSync, 0);
  vfslog_string(pVfs, zPath);
  return rc;
}
