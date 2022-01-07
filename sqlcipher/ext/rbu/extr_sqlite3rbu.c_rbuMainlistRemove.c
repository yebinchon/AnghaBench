
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pRbuVfs; struct TYPE_5__* pMainRbuNext; struct TYPE_5__* pMainNext; } ;
typedef TYPE_2__ rbu_file ;
struct TYPE_4__ {int mutex; TYPE_2__* pMainRbu; TYPE_2__* pMain; } ;


 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static void rbuMainlistRemove(rbu_file *p){
  rbu_file **pp;
  sqlite3_mutex_enter(p->pRbuVfs->mutex);
  for(pp=&p->pRbuVfs->pMain; *pp && *pp!=p; pp=&((*pp)->pMainNext)){}
  if( *pp ) *pp = p->pMainNext;
  p->pMainNext = 0;
  for(pp=&p->pRbuVfs->pMainRbu; *pp && *pp!=p; pp=&((*pp)->pMainRbuNext)){}
  if( *pp ) *pp = p->pMainRbuNext;
  p->pMainRbuNext = 0;
  sqlite3_mutex_leave(p->pRbuVfs->mutex);
}
