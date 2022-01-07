
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pPager; } ;
struct TYPE_8__ {TYPE_1__* db; TYPE_3__* pBt; } ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtShared ;


 int SQLITE_OK ;
 int assert (int ) ;
 int sqlite3BtreeEnter (TYPE_2__*) ;
 int sqlite3BtreeLeave (TYPE_2__*) ;
 int sqlite3PagerSetFlags (int ,unsigned int) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3BtreeSetPagerFlags(
  Btree *p,
  unsigned pgFlags
){
  BtShared *pBt = p->pBt;
  assert( sqlite3_mutex_held(p->db->mutex) );
  sqlite3BtreeEnter(p);
  sqlite3PagerSetFlags(pBt->pPager, pgFlags);
  sqlite3BtreeLeave(p);
  return SQLITE_OK;
}
