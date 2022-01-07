
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_7__ {scalar_t__ pStmt; scalar_t__ bSeekStmt; TYPE_1__ base; } ;
struct TYPE_6__ {scalar_t__ pSeekStmt; } ;
typedef TYPE_2__ Fts3Table ;
typedef TYPE_3__ Fts3Cursor ;


 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_reset (scalar_t__) ;

__attribute__((used)) static void fts3CursorFinalizeStmt(Fts3Cursor *pCsr){
  if( pCsr->bSeekStmt ){
    Fts3Table *p = (Fts3Table *)pCsr->base.pVtab;
    if( p->pSeekStmt==0 ){
      p->pSeekStmt = pCsr->pStmt;
      sqlite3_reset(pCsr->pStmt);
      pCsr->pStmt = 0;
    }
    pCsr->bSeekStmt = 0;
  }
  sqlite3_finalize(pCsr->pStmt);
}
