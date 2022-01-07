
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int nPage; } ;
struct TYPE_5__ {TYPE_4__* pBt; } ;
typedef TYPE_1__ Btree ;


 int assert (int) ;
 int btreePagecount (TYPE_4__*) ;
 int sqlite3BtreeHoldsMutex (TYPE_1__*) ;

u32 sqlite3BtreeLastPage(Btree *p){
  assert( sqlite3BtreeHoldsMutex(p) );
  assert( ((p->pBt->nPage)&0x80000000)==0 );
  return btreePagecount(p->pBt);
}
