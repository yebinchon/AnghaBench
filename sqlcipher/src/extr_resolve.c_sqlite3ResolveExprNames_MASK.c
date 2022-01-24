#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_11__ {TYPE_3__* pNC; } ;
struct TYPE_12__ {TYPE_9__* pParse; TYPE_1__ u; scalar_t__ xSelectCallback2; int /*<<< orphan*/  xSelectCallback; int /*<<< orphan*/  xExprCallback; } ;
typedef  TYPE_2__ Walker ;
struct TYPE_15__ {scalar_t__ nErr; int /*<<< orphan*/  nHeight; } ;
struct TYPE_14__ {scalar_t__ nHeight; } ;
struct TYPE_13__ {int ncFlags; scalar_t__ nErr; TYPE_9__* pParse; } ;
typedef  TYPE_3__ NameContext ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 int EP_Agg ; 
 int EP_Win ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int NC_HasAgg ; 
 int NC_HasWin ; 
 int NC_MinMaxAgg ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  resolveExprStep ; 
 int /*<<< orphan*/  resolveSelectStep ; 
 scalar_t__ FUNC2 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5( 
  NameContext *pNC,       /* Namespace to resolve expressions in. */
  Expr *pExpr             /* The expression to be analyzed. */
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
#if SQLITE_MAX_EXPR_DEPTH>0
  w.pParse->nHeight += pExpr->nHeight;
  if( sqlite3ExprCheckHeight(w.pParse, w.pParse->nHeight) ){
    return SQLITE_ERROR;
  }
#endif
  FUNC3(&w, pExpr);
#if SQLITE_MAX_EXPR_DEPTH>0
  w.pParse->nHeight -= pExpr->nHeight;
#endif
  FUNC1( EP_Agg==NC_HasAgg );
  FUNC1( EP_Win==NC_HasWin );
  FUNC4( pNC->ncFlags & NC_HasAgg );
  FUNC4( pNC->ncFlags & NC_HasWin );
  FUNC0(pExpr, pNC->ncFlags & (NC_HasAgg|NC_HasWin) );
  pNC->ncFlags |= savedHasAgg;
  return pNC->nErr>0 || w.pParse->nErr>0;
}