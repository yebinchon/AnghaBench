
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pVtab; } ;
struct TYPE_5__ {scalar_t__ ePlan; int pStmt; TYPE_1__ base; } ;
typedef int Fts5FullTable ;
typedef TYPE_2__ Fts5Cursor ;
typedef int Fts5Context ;


 scalar_t__ FTS5_PLAN_SPECIAL ;
 int SQLITE_OK ;
 scalar_t__ fts5IsContentless (int *) ;
 int fts5SeekCursor (TYPE_2__*,int ) ;
 int sqlite3_column_bytes (int ,int) ;
 scalar_t__ sqlite3_column_text (int ,int) ;

__attribute__((used)) static int fts5ApiColumnText(
  Fts5Context *pCtx,
  int iCol,
  const char **pz,
  int *pn
){
  int rc = SQLITE_OK;
  Fts5Cursor *pCsr = (Fts5Cursor*)pCtx;
  if( fts5IsContentless((Fts5FullTable*)(pCsr->base.pVtab))
   || pCsr->ePlan==FTS5_PLAN_SPECIAL
  ){
    *pz = 0;
    *pn = 0;
  }else{
    rc = fts5SeekCursor(pCsr, 0);
    if( rc==SQLITE_OK ){
      *pz = (const char*)sqlite3_column_text(pCsr->pStmt, iCol+1);
      *pn = sqlite3_column_bytes(pCsr->pStmt, iCol+1);
    }
  }
  return rc;
}
