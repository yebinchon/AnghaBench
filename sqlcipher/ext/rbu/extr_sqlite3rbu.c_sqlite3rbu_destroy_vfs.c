
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ xOpen; } ;
typedef TYPE_1__ sqlite3_vfs ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_2__ rbu_vfs ;


 scalar_t__ rbuVfsOpen ;
 int sqlite3_free (TYPE_1__*) ;
 int sqlite3_mutex_free (int ) ;
 TYPE_1__* sqlite3_vfs_find (char const*) ;
 int sqlite3_vfs_unregister (TYPE_1__*) ;

void sqlite3rbu_destroy_vfs(const char *zName){
  sqlite3_vfs *pVfs = sqlite3_vfs_find(zName);
  if( pVfs && pVfs->xOpen==rbuVfsOpen ){
    sqlite3_mutex_free(((rbu_vfs*)pVfs)->mutex);
    sqlite3_vfs_unregister(pVfs);
    sqlite3_free(pVfs);
  }
}
