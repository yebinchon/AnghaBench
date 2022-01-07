
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tnum; struct TYPE_5__* pNext; TYPE_1__* pTable; } ;
struct TYPE_4__ {TYPE_2__* pIndex; } ;
typedef TYPE_2__ Index ;



int sqlite3IndexHasDuplicateRootPage(Index *pIndex){
  Index *p;
  for(p=pIndex->pTable->pIndex; p; p=p->pNext){
    if( p->tnum==pIndex->tnum && p!=pIndex ) return 1;
  }
  return 0;
}
