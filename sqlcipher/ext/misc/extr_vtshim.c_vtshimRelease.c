
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pChild; TYPE_3__* pAux; } ;
typedef TYPE_2__ vtshim_vtab ;
struct TYPE_6__ {TYPE_1__* pMod; scalar_t__ bDisposed; } ;
typedef TYPE_3__ vtshim_aux ;
typedef int sqlite3_vtab ;
struct TYPE_4__ {int (* xRelease ) (int ,int) ;} ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int VTSHIM_COPY_ERRMSG () ;
 int stub1 (int ,int) ;

__attribute__((used)) static int vtshimRelease(sqlite3_vtab *pBase, int n){
  vtshim_vtab *pVtab = (vtshim_vtab*)pBase;
  vtshim_aux *pAux = pVtab->pAux;
  int rc;
  if( pAux->bDisposed ) return SQLITE_ERROR;
  rc = pAux->pMod->xRelease(pVtab->pChild, n);
  if( rc!=SQLITE_OK ){
    VTSHIM_COPY_ERRMSG();
  }
  return rc;
}
