
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_7__ {int ePlan; int pStmt; int pExpr; int iLastRowid; } ;
typedef TYPE_1__ Fts5Cursor ;


 int CsrFlagSet (TYPE_1__*,int ) ;
 int CsrFlagTest (TYPE_1__*,int ) ;
 int FTS5CSR_EOF ;
 int FTS5_PLAN_MATCH ;

 int FTS5_PLAN_SOURCE ;

 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int fts5CsrNewrow (TYPE_1__*) ;
 int fts5CursorReseek (TYPE_1__*,int*) ;
 int fts5SorterNext (TYPE_1__*) ;
 int sqlite3Fts5ExprEof (int ) ;
 int sqlite3Fts5ExprNext (int ,int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int fts5NextMethod(sqlite3_vtab_cursor *pCursor){
  Fts5Cursor *pCsr = (Fts5Cursor*)pCursor;
  int rc;

  assert( (pCsr->ePlan<3)==
          (pCsr->ePlan==FTS5_PLAN_MATCH || pCsr->ePlan==FTS5_PLAN_SOURCE)
  );
  assert( !CsrFlagTest(pCsr, FTS5CSR_EOF) );

  if( pCsr->ePlan<3 ){
    int bSkip = 0;
    if( (rc = fts5CursorReseek(pCsr, &bSkip)) || bSkip ) return rc;
    rc = sqlite3Fts5ExprNext(pCsr->pExpr, pCsr->iLastRowid);
    CsrFlagSet(pCsr, sqlite3Fts5ExprEof(pCsr->pExpr));
    fts5CsrNewrow(pCsr);
  }else{
    switch( pCsr->ePlan ){
      case 128: {
        CsrFlagSet(pCsr, FTS5CSR_EOF);
        rc = SQLITE_OK;
        break;
      }

      case 129: {
        rc = fts5SorterNext(pCsr);
        break;
      }

      default:
        rc = sqlite3_step(pCsr->pStmt);
        if( rc!=SQLITE_ROW ){
          CsrFlagSet(pCsr, FTS5CSR_EOF);
          rc = sqlite3_reset(pCsr->pStmt);
        }else{
          rc = SQLITE_OK;
        }
        break;
    }
  }

  return rc;
}
