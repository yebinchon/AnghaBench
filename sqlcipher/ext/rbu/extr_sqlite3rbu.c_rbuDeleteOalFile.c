
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rc; scalar_t__ zErrmsg; int zTarget; } ;
typedef TYPE_1__ sqlite3rbu ;
struct TYPE_8__ {int (* xDelete ) (TYPE_2__*,char*,int ) ;} ;
typedef TYPE_2__ sqlite3_vfs ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 char* rbuMPrintf (TYPE_1__*,char*,int ) ;
 int sqlite3_free (char*) ;
 TYPE_2__* sqlite3_vfs_find (int ) ;
 int stub1 (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void rbuDeleteOalFile(sqlite3rbu *p){
  char *zOal = rbuMPrintf(p, "%s-oal", p->zTarget);
  if( zOal ){
    sqlite3_vfs *pVfs = sqlite3_vfs_find(0);
    assert( pVfs && p->rc==SQLITE_OK && p->zErrmsg==0 );
    pVfs->xDelete(pVfs, zOal, 0);
    sqlite3_free(zOal);
  }
}
