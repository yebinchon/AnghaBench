
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; TYPE_2__* pMainRbu; TYPE_2__* pMain; } ;
typedef TYPE_1__ rbu_vfs ;
struct TYPE_5__ {int openFlags; scalar_t__ pRbu; struct TYPE_5__* pMainRbuNext; struct TYPE_5__* pMainNext; TYPE_1__* pRbuVfs; } ;
typedef TYPE_2__ rbu_file ;


 int SQLITE_OPEN_MAIN_DB ;
 int assert (int) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static void rbuMainlistAdd(rbu_file *p){
  rbu_vfs *pRbuVfs = p->pRbuVfs;
  rbu_file *pIter;
  assert( (p->openFlags & SQLITE_OPEN_MAIN_DB) );
  sqlite3_mutex_enter(pRbuVfs->mutex);
  if( p->pRbu==0 ){
    for(pIter=pRbuVfs->pMain; pIter; pIter=pIter->pMainNext);
    p->pMainNext = pRbuVfs->pMain;
    pRbuVfs->pMain = p;
  }else{
    for(pIter=pRbuVfs->pMainRbu; pIter && pIter!=p; pIter=pIter->pMainRbuNext){}
    if( pIter==0 ){
      p->pMainRbuNext = pRbuVfs->pMainRbu;
      pRbuVfs->pMainRbu = p;
    }
  }
  sqlite3_mutex_leave(pRbuVfs->mutex);
}
