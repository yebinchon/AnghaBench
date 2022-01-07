
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pBt; } ;
struct TYPE_4__ {int pageSize; int usableSize; int mutex; } ;
typedef TYPE_2__ Btree ;


 int assert (int ) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3BtreeGetReserveNoMutex(Btree *p){
  int n;
  assert( sqlite3_mutex_held(p->pBt->mutex) );
  n = p->pBt->pageSize - p->pBt->usableSize;
  return n;
}
