
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pChild; TYPE_3__* pAllCur; struct TYPE_6__* pNext; } ;
typedef TYPE_2__ vtshim_vtab ;
struct TYPE_7__ {int pChild; struct TYPE_7__* pNext; } ;
typedef TYPE_3__ vtshim_cursor ;
struct TYPE_8__ {int bDisposed; int (* xChildDestroy ) (int ) ;int pChildAux; TYPE_1__* pMod; TYPE_2__* pAllVtab; } ;
typedef TYPE_4__ vtshim_aux ;
struct TYPE_5__ {int (* xDisconnect ) (int ) ;int (* xClose ) (int ) ;} ;


 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

void sqlite3_dispose_module(void *pX){
  vtshim_aux *pAux = (vtshim_aux*)pX;
  if( !pAux->bDisposed ){
    vtshim_vtab *pVtab;
    vtshim_cursor *pCur;
    for(pVtab=pAux->pAllVtab; pVtab; pVtab=pVtab->pNext){
      for(pCur=pVtab->pAllCur; pCur; pCur=pCur->pNext){
        pAux->pMod->xClose(pCur->pChild);
      }
      pAux->pMod->xDisconnect(pVtab->pChild);
    }
    pAux->bDisposed = 1;
    if( pAux->xChildDestroy ){
      pAux->xChildDestroy(pAux->pChildAux);
      pAux->xChildDestroy = 0;
    }
  }
}
