
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pBt; } ;
struct TYPE_4__ {int * pPager; } ;
typedef int Pager ;
typedef TYPE_2__ Btree ;



Pager *sqlite3BtreePager(Btree *p){
  return p->pBt->pPager;
}
