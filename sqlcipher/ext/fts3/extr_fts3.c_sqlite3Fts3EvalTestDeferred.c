
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pExpr; scalar_t__ pDeferred; } ;
typedef TYPE_1__ Fts3Cursor ;


 int SQLITE_OK ;
 int fts3CursorSeek (int ,TYPE_1__*) ;
 scalar_t__ fts3EvalTestExpr (TYPE_1__*,int ,int*) ;
 int sqlite3Fts3CacheDeferredDoclists (TYPE_1__*) ;
 int sqlite3Fts3FreeDeferredDoclists (TYPE_1__*) ;

int sqlite3Fts3EvalTestDeferred(Fts3Cursor *pCsr, int *pRc){
  int rc = *pRc;
  int bMiss = 0;
  if( rc==SQLITE_OK ){







    if( pCsr->pDeferred ){
      rc = fts3CursorSeek(0, pCsr);
      if( rc==SQLITE_OK ){
        rc = sqlite3Fts3CacheDeferredDoclists(pCsr);
      }
    }
    bMiss = (0==fts3EvalTestExpr(pCsr, pCsr->pExpr, &rc));


    sqlite3Fts3FreeDeferredDoclists(pCsr);
    *pRc = rc;
  }
  return (rc==SQLITE_OK && bMiss);
}
