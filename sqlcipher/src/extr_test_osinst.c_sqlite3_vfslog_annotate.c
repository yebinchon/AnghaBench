
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ xOpen; } ;
typedef TYPE_1__ sqlite3_vfs ;


 int OS_ANNOTATE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 TYPE_1__* sqlite3_vfs_find (char const*) ;
 scalar_t__ vfslogOpen ;
 int vfslog_call (TYPE_1__*,int ,int ,int ,int ,int ,int ) ;
 int vfslog_string (TYPE_1__*,char const*) ;

int sqlite3_vfslog_annotate(const char *zVfs, const char *zMsg){
  sqlite3_vfs *pVfs;
  pVfs = sqlite3_vfs_find(zVfs);
  if( !pVfs || pVfs->xOpen!=vfslogOpen ){
    return SQLITE_ERROR;
  }
  vfslog_call(pVfs, OS_ANNOTATE, 0, 0, 0, 0, 0);
  vfslog_string(pVfs, zMsg);
  return SQLITE_OK;
}
