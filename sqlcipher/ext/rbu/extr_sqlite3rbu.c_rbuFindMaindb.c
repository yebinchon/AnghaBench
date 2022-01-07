
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; TYPE_2__* pMain; TYPE_2__* pMainRbu; } ;
typedef TYPE_1__ rbu_vfs ;
struct TYPE_6__ {char const* zWal; struct TYPE_6__* pMainNext; struct TYPE_6__* pMainRbuNext; } ;
typedef TYPE_2__ rbu_file ;


 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static rbu_file *rbuFindMaindb(rbu_vfs *pRbuVfs, const char *zWal, int bRbu){
  rbu_file *pDb;
  sqlite3_mutex_enter(pRbuVfs->mutex);
  if( bRbu ){
    for(pDb=pRbuVfs->pMainRbu; pDb && pDb->zWal!=zWal; pDb=pDb->pMainRbuNext){}
  }else{
    for(pDb=pRbuVfs->pMain; pDb && pDb->zWal!=zWal; pDb=pDb->pMainNext){}
  }
  sqlite3_mutex_leave(pRbuVfs->mutex);
  return pDb;
}
