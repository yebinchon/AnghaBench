
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ xOpen; } ;
typedef TYPE_1__ sqlite3_vfs ;
typedef int VfslogVfs ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 TYPE_1__* sqlite3_vfs_find (char const*) ;
 int sqlite3_vfs_unregister (TYPE_1__*) ;
 scalar_t__ vfslogOpen ;
 int vfslog_finalize (int *) ;

int sqlite3_vfslog_finalize(const char *zVfs){
  sqlite3_vfs *pVfs;
  pVfs = sqlite3_vfs_find(zVfs);
  if( !pVfs || pVfs->xOpen!=vfslogOpen ){
    return SQLITE_ERROR;
  }
  sqlite3_vfs_unregister(pVfs);
  vfslog_finalize((VfslogVfs *)pVfs);
  return SQLITE_OK;
}
