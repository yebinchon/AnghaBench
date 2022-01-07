
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_5__ {int base; int pExpr; int pMIBuffer; int aDoclist; } ;
typedef TYPE_1__ Fts3Cursor ;


 int fts3CursorFinalizeStmt (TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int sqlite3Fts3ExprFree (int ) ;
 int sqlite3Fts3FreeDeferredTokens (TYPE_1__*) ;
 int sqlite3Fts3MIBufferFree (int ) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static void fts3ClearCursor(Fts3Cursor *pCsr){
  fts3CursorFinalizeStmt(pCsr);
  sqlite3Fts3FreeDeferredTokens(pCsr);
  sqlite3_free(pCsr->aDoclist);
  sqlite3Fts3MIBufferFree(pCsr->pMIBuffer);
  sqlite3Fts3ExprFree(pCsr->pExpr);
  memset(&(&pCsr->base)[1], 0, sizeof(Fts3Cursor)-sizeof(sqlite3_vtab_cursor));
}
