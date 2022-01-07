
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
struct TYPE_7__ {scalar_t__ pVtab; } ;
struct TYPE_9__ {int pChild; TYPE_2__ base; } ;
typedef TYPE_4__ vtshim_cursor ;
struct TYPE_10__ {TYPE_1__* pMod; scalar_t__ bDisposed; } ;
typedef TYPE_5__ vtshim_aux ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_6__ {int (* xFilter ) (int ,int,char const*,int,int **) ;} ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int VTSHIM_COPY_ERRMSG () ;
 int stub1 (int ,int,char const*,int,int **) ;

__attribute__((used)) static int vtshimFilter(
  sqlite3_vtab_cursor *pX,
  int idxNum,
  const char *idxStr,
  int argc,
  sqlite3_value **argv
){
  vtshim_cursor *pCur = (vtshim_cursor*)pX;
  vtshim_vtab *pVtab = (vtshim_vtab*)pCur->base.pVtab;
  vtshim_aux *pAux = pVtab->pAux;
  int rc;
  if( pAux->bDisposed ) return SQLITE_ERROR;
  rc = pAux->pMod->xFilter(pCur->pChild, idxNum, idxStr, argc, argv);
  if( rc!=SQLITE_OK ){
    VTSHIM_COPY_ERRMSG();
  }
  return rc;
}
