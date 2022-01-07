
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pCsrCache; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_6__ {struct TYPE_6__* pNext; } ;
typedef TYPE_2__ MultiCursor ;


 int lsmMCursorClose (TYPE_2__*,int ) ;

void lsmMCursorFreeCache(lsm_db *pDb){
  MultiCursor *p;
  MultiCursor *pNext;
  for(p=pDb->pCsrCache; p; p=pNext){
    pNext = p->pNext;
    lsmMCursorClose(p, 0);
  }
  pDb->pCsrCache = 0;
}
