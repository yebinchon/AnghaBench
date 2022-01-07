
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {TYPE_1__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_21__ {int zName; int pSchema; } ;
typedef TYPE_4__ Table ;
struct TYPE_23__ {TYPE_3__* db; } ;
struct TYPE_22__ {int nSrc; TYPE_2__* a; } ;
struct TYPE_19__ {scalar_t__ pOn; scalar_t__ pUsing; void* zDatabase; void* zName; } ;
struct TYPE_18__ {int zDbSName; } ;
typedef TYPE_5__ SrcList ;
typedef int SelectDest ;
typedef int Select ;
typedef TYPE_6__ Parse ;
typedef int ExprList ;
typedef int Expr ;


 int SF_IncludeHidden ;
 int SRT_EphemTab ;
 int assert (int) ;
 void* sqlite3DbStrDup (TYPE_3__*,int ) ;
 int * sqlite3ExprDup (TYPE_3__*,int *,int ) ;
 int sqlite3SchemaToIndex (TYPE_3__*,int ) ;
 int sqlite3Select (TYPE_6__*,int *,int *) ;
 int sqlite3SelectDelete (TYPE_3__*,int *) ;
 int sqlite3SelectDestInit (int *,int ,int) ;
 int * sqlite3SelectNew (TYPE_6__*,int ,TYPE_5__*,int *,int ,int ,int *,int ,int *) ;
 TYPE_5__* sqlite3SrcListAppend (TYPE_6__*,int ,int ,int ) ;

void sqlite3MaterializeView(
  Parse *pParse,
  Table *pView,
  Expr *pWhere,
  ExprList *pOrderBy,
  Expr *pLimit,
  int iCur
){
  SelectDest dest;
  Select *pSel;
  SrcList *pFrom;
  sqlite3 *db = pParse->db;
  int iDb = sqlite3SchemaToIndex(db, pView->pSchema);
  pWhere = sqlite3ExprDup(db, pWhere, 0);
  pFrom = sqlite3SrcListAppend(pParse, 0, 0, 0);
  if( pFrom ){
    assert( pFrom->nSrc==1 );
    pFrom->a[0].zName = sqlite3DbStrDup(db, pView->zName);
    pFrom->a[0].zDatabase = sqlite3DbStrDup(db, db->aDb[iDb].zDbSName);
    assert( pFrom->a[0].pOn==0 );
    assert( pFrom->a[0].pUsing==0 );
  }
  pSel = sqlite3SelectNew(pParse, 0, pFrom, pWhere, 0, 0, pOrderBy,
                          SF_IncludeHidden, pLimit);
  sqlite3SelectDestInit(&dest, SRT_EphemTab, iCur);
  sqlite3Select(pParse, pSel, &dest);
  sqlite3SelectDelete(db, pSel);
}
