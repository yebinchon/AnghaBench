
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pVtab; } ;
typedef TYPE_2__ sqlite3_vtab_cursor ;
struct TYPE_10__ {int iPos; int iEnd; int iStart; int nToken; int zToken; int pCsr; int iRowid; } ;
struct TYPE_9__ {TYPE_1__* pMod; } ;
struct TYPE_7__ {int (* xNext ) (int ,int *,int *,int *,int *,int *) ;} ;
typedef TYPE_3__ Fts3tokTable ;
typedef TYPE_4__ Fts3tokCursor ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 int fts3tokResetCursor (TYPE_4__*) ;
 int stub1 (int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int fts3tokNextMethod(sqlite3_vtab_cursor *pCursor){
  Fts3tokCursor *pCsr = (Fts3tokCursor *)pCursor;
  Fts3tokTable *pTab = (Fts3tokTable *)(pCursor->pVtab);
  int rc;

  pCsr->iRowid++;
  rc = pTab->pMod->xNext(pCsr->pCsr,
      &pCsr->zToken, &pCsr->nToken,
      &pCsr->iStart, &pCsr->iEnd, &pCsr->iPos
  );

  if( rc!=SQLITE_OK ){
    fts3tokResetCursor(pCsr);
    if( rc==SQLITE_DONE ) rc = SQLITE_OK;
  }

  return rc;
}
