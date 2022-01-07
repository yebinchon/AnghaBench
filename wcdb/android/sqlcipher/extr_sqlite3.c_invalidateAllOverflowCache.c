
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pNext; } ;
struct TYPE_5__ {TYPE_2__* pCursor; int mutex; } ;
typedef TYPE_1__ BtShared ;
typedef TYPE_2__ BtCursor ;


 int assert (int ) ;
 int invalidateOverflowCache (TYPE_2__*) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static void invalidateAllOverflowCache(BtShared *pBt){
  BtCursor *p;
  assert( sqlite3_mutex_held(pBt->mutex) );
  for(p=pBt->pCursor; p; p=p->pNext){
    invalidateOverflowCache(p);
  }
}
