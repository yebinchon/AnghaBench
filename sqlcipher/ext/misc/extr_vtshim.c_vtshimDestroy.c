
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pNext; TYPE_1__** ppPrev; int pChild; TYPE_4__* pAux; } ;
typedef TYPE_3__ vtshim_vtab ;
struct TYPE_9__ {TYPE_2__* pMod; int bDisposed; } ;
typedef TYPE_4__ vtshim_aux ;
typedef int sqlite3_vtab ;
struct TYPE_7__ {int (* xDestroy ) (int ) ;} ;
struct TYPE_6__ {struct TYPE_6__** ppPrev; } ;


 int SQLITE_OK ;
 int sqlite3_free (TYPE_3__*) ;
 int stub1 (int ) ;

__attribute__((used)) static int vtshimDestroy(sqlite3_vtab *pBase){
  vtshim_vtab *pVtab = (vtshim_vtab*)pBase;
  vtshim_aux *pAux = pVtab->pAux;
  int rc = SQLITE_OK;
  if( !pAux->bDisposed ){
    rc = pAux->pMod->xDestroy(pVtab->pChild);
  }
  if( pVtab->pNext ) pVtab->pNext->ppPrev = pVtab->ppPrev;
  *pVtab->ppPrev = pVtab->pNext;
  sqlite3_free(pVtab);
  return rc;
}
