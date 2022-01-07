
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int iVersion; int xRollbackTo; int xRelease; int xSavepoint; int xRename; int xFindFunction; int xRollback; int xCommit; int xSync; int xBegin; int xUpdate; int xRowid; int xColumn; int xEof; int xNext; int xFilter; int xClose; int xOpen; int xDestroy; int xDisconnect; int xBestIndex; int xConnect; int xCreate; } ;
struct TYPE_10__ {void (* xChildDestroy ) (void*) ;TYPE_7__ sSelf; scalar_t__ pAllVtab; scalar_t__ bDisposed; int zName; int * db; TYPE_2__* pMod; void* pChildAux; } ;
typedef TYPE_1__ vtshim_aux ;
struct TYPE_11__ {int iVersion; scalar_t__ xRollbackTo; scalar_t__ xRelease; scalar_t__ xSavepoint; scalar_t__ xRename; scalar_t__ xFindFunction; scalar_t__ xRollback; scalar_t__ xCommit; scalar_t__ xSync; scalar_t__ xBegin; scalar_t__ xUpdate; scalar_t__ xRowid; scalar_t__ xColumn; scalar_t__ xEof; scalar_t__ xNext; scalar_t__ xFilter; scalar_t__ xClose; scalar_t__ xOpen; scalar_t__ xDestroy; scalar_t__ xDisconnect; scalar_t__ xBestIndex; scalar_t__ xConnect; scalar_t__ xCreate; } ;
typedef TYPE_2__ sqlite3_module ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int sqlite3_create_module_v2 (int *,char const*,TYPE_7__*,TYPE_1__*,int ) ;
 int sqlite3_free (TYPE_1__*) ;
 TYPE_1__* sqlite3_malloc (int) ;
 int sqlite3_mprintf (char*,char const*) ;
 int vtshimAuxDestructor ;
 int vtshimBegin ;
 int vtshimBestIndex ;
 int vtshimClose ;
 int vtshimColumn ;
 int vtshimCommit ;
 int vtshimConnect ;
 int vtshimCopyModule (TYPE_2__ const*,TYPE_2__**) ;
 int vtshimCreate ;
 int vtshimDestroy ;
 int vtshimDisconnect ;
 int vtshimEof ;
 int vtshimFilter ;
 int vtshimFindFunction ;
 int vtshimNext ;
 int vtshimOpen ;
 int vtshimRelease ;
 int vtshimRename ;
 int vtshimRollback ;
 int vtshimRollbackTo ;
 int vtshimRowid ;
 int vtshimSavepoint ;
 int vtshimSync ;
 int vtshimUpdate ;

void *sqlite3_create_disposable_module(
  sqlite3 *db,
  const char *zName,
  const sqlite3_module *p,
  void *pClientData,
  void(*xDestroy)(void*)
){
  vtshim_aux *pAux;
  sqlite3_module *pMod;
  int rc;
  pAux = sqlite3_malloc( sizeof(*pAux) );
  if( pAux==0 ){
    if( xDestroy ) xDestroy(pClientData);
    return 0;
  }
  rc = vtshimCopyModule(p, &pMod);
  if( rc!=SQLITE_OK ){
    sqlite3_free(pAux);
    return 0;
  }
  pAux->pChildAux = pClientData;
  pAux->xChildDestroy = xDestroy;
  pAux->pMod = pMod;
  pAux->db = db;
  pAux->zName = sqlite3_mprintf("%s", zName);
  pAux->bDisposed = 0;
  pAux->pAllVtab = 0;
  pAux->sSelf.iVersion = p->iVersion<=2 ? p->iVersion : 2;
  pAux->sSelf.xCreate = p->xCreate ? vtshimCreate : 0;
  pAux->sSelf.xConnect = p->xConnect ? vtshimConnect : 0;
  pAux->sSelf.xBestIndex = p->xBestIndex ? vtshimBestIndex : 0;
  pAux->sSelf.xDisconnect = p->xDisconnect ? vtshimDisconnect : 0;
  pAux->sSelf.xDestroy = p->xDestroy ? vtshimDestroy : 0;
  pAux->sSelf.xOpen = p->xOpen ? vtshimOpen : 0;
  pAux->sSelf.xClose = p->xClose ? vtshimClose : 0;
  pAux->sSelf.xFilter = p->xFilter ? vtshimFilter : 0;
  pAux->sSelf.xNext = p->xNext ? vtshimNext : 0;
  pAux->sSelf.xEof = p->xEof ? vtshimEof : 0;
  pAux->sSelf.xColumn = p->xColumn ? vtshimColumn : 0;
  pAux->sSelf.xRowid = p->xRowid ? vtshimRowid : 0;
  pAux->sSelf.xUpdate = p->xUpdate ? vtshimUpdate : 0;
  pAux->sSelf.xBegin = p->xBegin ? vtshimBegin : 0;
  pAux->sSelf.xSync = p->xSync ? vtshimSync : 0;
  pAux->sSelf.xCommit = p->xCommit ? vtshimCommit : 0;
  pAux->sSelf.xRollback = p->xRollback ? vtshimRollback : 0;
  pAux->sSelf.xFindFunction = p->xFindFunction ? vtshimFindFunction : 0;
  pAux->sSelf.xRename = p->xRename ? vtshimRename : 0;
  if( p->iVersion>=2 ){
    pAux->sSelf.xSavepoint = p->xSavepoint ? vtshimSavepoint : 0;
    pAux->sSelf.xRelease = p->xRelease ? vtshimRelease : 0;
    pAux->sSelf.xRollbackTo = p->xRollbackTo ? vtshimRollbackTo : 0;
  }else{
    pAux->sSelf.xSavepoint = 0;
    pAux->sSelf.xRelease = 0;
    pAux->sSelf.xRollbackTo = 0;
  }
  rc = sqlite3_create_module_v2(db, zName, &pAux->sSelf,
                                pAux, vtshimAuxDestructor);
  return rc==SQLITE_OK ? (void*)pAux : 0;
}
