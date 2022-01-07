
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_6__ {scalar_t__ pVtab; } ;
struct TYPE_8__ {int isEof; TYPE_1__ base; int pStmt; scalar_t__ isRequireSeek; int iPrevId; } ;
struct TYPE_7__ {scalar_t__ zContentTbl; } ;
typedef TYPE_2__ Fts3Table ;
typedef TYPE_3__ Fts3Cursor ;


 int FTS_CORRUPT_VTAB ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int fts3CursorSeekStmt (TYPE_3__*) ;
 int sqlite3_bind_int64 (int ,int,int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_result_error_code (int *,int) ;
 scalar_t__ sqlite3_step (int ) ;

__attribute__((used)) static int fts3CursorSeek(sqlite3_context *pContext, Fts3Cursor *pCsr){
  int rc = SQLITE_OK;
  if( pCsr->isRequireSeek ){
    rc = fts3CursorSeekStmt(pCsr);
    if( rc==SQLITE_OK ){
      sqlite3_bind_int64(pCsr->pStmt, 1, pCsr->iPrevId);
      pCsr->isRequireSeek = 0;
      if( SQLITE_ROW==sqlite3_step(pCsr->pStmt) ){
        return SQLITE_OK;
      }else{
        rc = sqlite3_reset(pCsr->pStmt);
        if( rc==SQLITE_OK && ((Fts3Table *)pCsr->base.pVtab)->zContentTbl==0 ){



          rc = FTS_CORRUPT_VTAB;
          pCsr->isEof = 1;
        }
      }
    }
  }

  if( rc!=SQLITE_OK && pContext ){
    sqlite3_result_error_code(pContext, rc);
  }
  return rc;
}
