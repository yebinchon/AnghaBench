
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_11__ {TYPE_3__* pNC; } ;
struct TYPE_12__ {TYPE_9__* pParse; TYPE_1__ u; scalar_t__ xSelectCallback2; int xSelectCallback; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
struct TYPE_15__ {scalar_t__ nErr; int nHeight; } ;
struct TYPE_14__ {scalar_t__ nHeight; } ;
struct TYPE_13__ {int ncFlags; scalar_t__ nErr; TYPE_9__* pParse; } ;
typedef TYPE_3__ NameContext ;
typedef TYPE_4__ Expr ;


 int EP_Agg ;
 int EP_Win ;
 int ExprSetProperty (TYPE_4__*,int) ;
 int NC_HasAgg ;
 int NC_HasWin ;
 int NC_MinMaxAgg ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int resolveExprStep ;
 int resolveSelectStep ;
 scalar_t__ sqlite3ExprCheckHeight (TYPE_9__*,int ) ;
 int sqlite3WalkExpr (TYPE_2__*,TYPE_4__*) ;
 int testcase (int) ;

int sqlite3ResolveExprNames(
  NameContext *pNC,
  Expr *pExpr
){
  u16 savedHasAgg;
  Walker w;

  if( pExpr==0 ) return SQLITE_OK;
  savedHasAgg = pNC->ncFlags & (NC_HasAgg|NC_MinMaxAgg|NC_HasWin);
  pNC->ncFlags &= ~(NC_HasAgg|NC_MinMaxAgg|NC_HasWin);
  w.pParse = pNC->pParse;
  w.xExprCallback = resolveExprStep;
  w.xSelectCallback = resolveSelectStep;
  w.xSelectCallback2 = 0;
  w.u.pNC = pNC;






  sqlite3WalkExpr(&w, pExpr);



  assert( EP_Agg==NC_HasAgg );
  assert( EP_Win==NC_HasWin );
  testcase( pNC->ncFlags & NC_HasAgg );
  testcase( pNC->ncFlags & NC_HasWin );
  ExprSetProperty(pExpr, pNC->ncFlags & (NC_HasAgg|NC_HasWin) );
  pNC->ncFlags |= savedHasAgg;
  return pNC->nErr>0 || w.pParse->nErr>0;
}
