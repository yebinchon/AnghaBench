
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ wantToLock; scalar_t__ sharable; TYPE_1__* db; } ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_2__ Btree ;


 int assert (int) ;
 int sqlite3_mutex_held (int ) ;
 int unlockBtreeMutex (TYPE_2__*) ;

void sqlite3BtreeLeave(Btree *p){
  assert( sqlite3_mutex_held(p->db->mutex) );
  if( p->sharable ){
    assert( p->wantToLock>0 );
    p->wantToLock--;
    if( p->wantToLock==0 ){
      unlockBtreeMutex(p);
    }
  }
}
