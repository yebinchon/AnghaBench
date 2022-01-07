
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ inTrans; TYPE_1__* db; } ;
struct TYPE_4__ {int mutex; } ;
typedef TYPE_2__ Btree ;


 scalar_t__ TRANS_WRITE ;
 int assert (int) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

int sqlite3BtreeIsInTrans(Btree *p){
  assert( p==0 || sqlite3_mutex_held(p->db->mutex) );
  return (p && (p->inTrans==TRANS_WRITE));
}
