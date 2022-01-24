#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_8__* pFuncArg; } ;
struct TYPE_19__ {scalar_t__ isTabFunc; } ;
struct SrcList_item {int /*<<< orphan*/  iCursor; TYPE_2__ u1; TYPE_6__* pTab; TYPE_1__ fg; } ;
typedef  int /*<<< orphan*/  WhereClause ;
struct TYPE_24__ {int nCol; int /*<<< orphan*/  zName; TYPE_3__* aCol; } ;
typedef  TYPE_6__ Table ;
struct TYPE_22__ {TYPE_6__* pTab; } ;
struct TYPE_27__ {TYPE_4__ y; int /*<<< orphan*/  iColumn; int /*<<< orphan*/  iTable; } ;
struct TYPE_26__ {int nExpr; TYPE_5__* a; } ;
struct TYPE_25__ {int /*<<< orphan*/  db; } ;
struct TYPE_23__ {int /*<<< orphan*/  pExpr; } ;
struct TYPE_21__ {int colFlags; } ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ ExprList ;
typedef  TYPE_9__ Expr ;

/* Variables and functions */
 int COLFLAG_HIDDEN ; 
 int /*<<< orphan*/  TERM_DYNAMIC ; 
 int /*<<< orphan*/  TK_COLUMN ; 
 int /*<<< orphan*/  TK_EQ ; 
 int /*<<< orphan*/  TK_UPLUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,char*,int /*<<< orphan*/ ,int) ; 
 TYPE_9__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_9__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ ) ; 

void FUNC6(
  Parse *pParse,                    /* Parsing context */
  struct SrcList_item *pItem,       /* The FROM clause term to process */
  WhereClause *pWC                  /* Xfer function arguments to here */
){
  Table *pTab;
  int j, k;
  ExprList *pArgs;
  Expr *pColRef;
  Expr *pTerm;
  if( pItem->fg.isTabFunc==0 ) return;
  pTab = pItem->pTab;
  FUNC0( pTab!=0 );
  pArgs = pItem->u1.pFuncArg;
  if( pArgs==0 ) return;
  for(j=k=0; j<pArgs->nExpr; j++){
    Expr *pRhs;
    while( k<pTab->nCol && (pTab->aCol[k].colFlags & COLFLAG_HIDDEN)==0 ){k++;}
    if( k>=pTab->nCol ){
      FUNC1(pParse, "too many arguments on %s() - max %d",
                      pTab->zName, j);
      return;
    }
    pColRef = FUNC2(pParse->db, TK_COLUMN, 0, 0);
    if( pColRef==0 ) return;
    pColRef->iTable = pItem->iCursor;
    pColRef->iColumn = k++;
    pColRef->y.pTab = pTab;
    pRhs = FUNC4(pParse, TK_UPLUS, 
        FUNC3(pParse->db, pArgs->a[j].pExpr, 0), 0);
    pTerm = FUNC4(pParse, TK_EQ, pColRef, pRhs);
    FUNC5(pWC, pTerm, TERM_DYNAMIC);
  }
}