
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int iFirstRowid; int * pExpr; } ;
struct TYPE_8__ {int pIndex; } ;
struct TYPE_9__ {TYPE_1__ p; } ;
typedef TYPE_2__ Fts5FullTable ;
typedef int Fts5Expr ;
typedef TYPE_3__ Fts5Cursor ;


 int CsrFlagSet (TYPE_3__*,int ) ;
 int FTS5CSR_EOF ;
 int fts5CsrNewrow (TYPE_3__*) ;
 scalar_t__ sqlite3Fts5ExprEof (int *) ;
 int sqlite3Fts5ExprFirst (int *,int ,int ,int) ;

__attribute__((used)) static int fts5CursorFirst(Fts5FullTable *pTab, Fts5Cursor *pCsr, int bDesc){
  int rc;
  Fts5Expr *pExpr = pCsr->pExpr;
  rc = sqlite3Fts5ExprFirst(pExpr, pTab->p.pIndex, pCsr->iFirstRowid, bDesc);
  if( sqlite3Fts5ExprEof(pExpr) ){
    CsrFlagSet(pCsr, FTS5CSR_EOF);
  }
  fts5CsrNewrow(pCsr);
  return rc;
}
