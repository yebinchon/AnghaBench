
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {int bDesc; int pExpr; TYPE_1__ base; } ;
struct TYPE_11__ {int pIndex; } ;
struct TYPE_12__ {TYPE_2__ p; } ;
typedef TYPE_3__ Fts5FullTable ;
typedef TYPE_4__ Fts5Cursor ;


 int CsrFlagClear (TYPE_4__*,int ) ;
 int CsrFlagSet (TYPE_4__*,int ) ;
 scalar_t__ CsrFlagTest (TYPE_4__*,int ) ;
 int FTS5CSR_EOF ;
 int FTS5CSR_REQUIRE_RESEEK ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5CsrNewrow (TYPE_4__*) ;
 scalar_t__ sqlite3Fts5ExprEof (int ) ;
 int sqlite3Fts5ExprFirst (int ,int ,scalar_t__,int) ;
 scalar_t__ sqlite3Fts5ExprRowid (int ) ;

__attribute__((used)) static int fts5CursorReseek(Fts5Cursor *pCsr, int *pbSkip){
  int rc = SQLITE_OK;
  assert( *pbSkip==0 );
  if( CsrFlagTest(pCsr, FTS5CSR_REQUIRE_RESEEK) ){
    Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
    int bDesc = pCsr->bDesc;
    i64 iRowid = sqlite3Fts5ExprRowid(pCsr->pExpr);

    rc = sqlite3Fts5ExprFirst(pCsr->pExpr, pTab->p.pIndex, iRowid, bDesc);
    if( rc==SQLITE_OK && iRowid!=sqlite3Fts5ExprRowid(pCsr->pExpr) ){
      *pbSkip = 1;
    }

    CsrFlagClear(pCsr, FTS5CSR_REQUIRE_RESEEK);
    fts5CsrNewrow(pCsr);
    if( sqlite3Fts5ExprEof(pCsr->pExpr) ){
      CsrFlagSet(pCsr, FTS5CSR_EOF);
      *pbSkip = 1;
    }
  }
  return rc;
}
