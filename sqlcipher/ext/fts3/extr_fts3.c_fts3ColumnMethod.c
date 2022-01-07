
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pVtab; } ;
typedef TYPE_2__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_8__ {scalar_t__ pVtab; } ;
struct TYPE_11__ {TYPE_1__ base; int pStmt; int iLangid; int pExpr; int iPrevId; } ;
struct TYPE_10__ {int nColumn; scalar_t__ pSegments; int zLanguageid; } ;
typedef TYPE_3__ Fts3Table ;
typedef TYPE_4__ Fts3Cursor ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3CursorSeek (int ,TYPE_4__*) ;
 int sqlite3_column_value (int ,int) ;
 int sqlite3_data_count (int ) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_pointer (int *,TYPE_4__*,char*,int ) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int fts3ColumnMethod(
  sqlite3_vtab_cursor *pCursor,
  sqlite3_context *pCtx,
  int iCol
){
  int rc = SQLITE_OK;
  Fts3Cursor *pCsr = (Fts3Cursor *) pCursor;
  Fts3Table *p = (Fts3Table *)pCursor->pVtab;


  assert( iCol>=0 && iCol<=p->nColumn+2 );

  switch( iCol-p->nColumn ){
    case 0:

      sqlite3_result_pointer(pCtx, pCsr, "fts3cursor", 0);
      break;

    case 1:

      sqlite3_result_int64(pCtx, pCsr->iPrevId);
      break;

    case 2:
      if( pCsr->pExpr ){
        sqlite3_result_int64(pCtx, pCsr->iLangid);
        break;
      }else if( p->zLanguageid==0 ){
        sqlite3_result_int(pCtx, 0);
        break;
      }else{
        iCol = p->nColumn;

      }

    default:


      rc = fts3CursorSeek(0, pCsr);
      if( rc==SQLITE_OK && sqlite3_data_count(pCsr->pStmt)-1>iCol ){
        sqlite3_result_value(pCtx, sqlite3_column_value(pCsr->pStmt, iCol+1));
      }
      break;
  }

  assert( ((Fts3Table *)pCsr->base.pVtab)->pSegments==0 );
  return rc;
}
