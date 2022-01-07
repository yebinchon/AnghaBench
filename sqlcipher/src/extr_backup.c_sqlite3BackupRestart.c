
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int iNext; TYPE_2__* pSrc; struct TYPE_7__* pNext; } ;
typedef TYPE_3__ sqlite3_backup ;
struct TYPE_6__ {TYPE_1__* pBt; } ;
struct TYPE_5__ {int mutex; } ;


 int assert (int ) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3BackupRestart(sqlite3_backup *pBackup){
  sqlite3_backup *p;
  for(p=pBackup; p; p=p->pNext){
    assert( sqlite3_mutex_held(p->pSrc->pBt->mutex) );
    p->iNext = 1;
  }
}
