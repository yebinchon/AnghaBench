
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* pAux; } ;
typedef TYPE_3__ vtshim_vtab ;
struct TYPE_6__ {scalar_t__ pVtab; } ;
struct TYPE_9__ {int pChild; TYPE_1__ base; } ;
typedef TYPE_4__ vtshim_cursor ;
struct TYPE_10__ {TYPE_2__* pMod; scalar_t__ bDisposed; } ;
typedef TYPE_5__ vtshim_aux ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_7__ {int (* xEof ) (int ) ;} ;


 int VTSHIM_COPY_ERRMSG () ;
 int stub1 (int ) ;

__attribute__((used)) static int vtshimEof(sqlite3_vtab_cursor *pX){
  vtshim_cursor *pCur = (vtshim_cursor*)pX;
  vtshim_vtab *pVtab = (vtshim_vtab*)pCur->base.pVtab;
  vtshim_aux *pAux = pVtab->pAux;
  int rc;
  if( pAux->bDisposed ) return 1;
  rc = pAux->pMod->xEof(pCur->pChild);
  VTSHIM_COPY_ERRMSG();
  return rc;
}
