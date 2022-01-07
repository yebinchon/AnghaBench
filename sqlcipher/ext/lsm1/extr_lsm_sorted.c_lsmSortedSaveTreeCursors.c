
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pCsr; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_5__ {int * apTreeCsr; struct TYPE_5__* pNext; } ;
typedef TYPE_2__ MultiCursor ;


 int lsmTreeCursorSave (int ) ;

void lsmSortedSaveTreeCursors(lsm_db *pDb){
  MultiCursor *pCsr;
  for(pCsr=pDb->pCsr; pCsr; pCsr=pCsr->pNext){
    lsmTreeCursorSave(pCsr->apTreeCsr[0]);
    lsmTreeCursorSave(pCsr->apTreeCsr[1]);
  }
}
