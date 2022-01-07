
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ inTrans; TYPE_1__* db; } ;
struct TYPE_6__ {int mutex; } ;
typedef TYPE_2__ Btree ;


 scalar_t__ TRANS_NONE ;
 int assert (TYPE_2__*) ;
 TYPE_2__* sqlite3_mutex_held (int ) ;

int sqlite3BtreeIsInReadTrans(Btree *p){
  assert( p );
  assert( sqlite3_mutex_held(p->db->mutex) );
  return p->inTrans!=TRANS_NONE;
}
