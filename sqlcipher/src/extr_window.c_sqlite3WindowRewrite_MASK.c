#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_52__   TYPE_8__ ;
typedef  struct TYPE_51__   TYPE_7__ ;
typedef  struct TYPE_50__   TYPE_6__ ;
typedef  struct TYPE_49__   TYPE_5__ ;
typedef  struct TYPE_48__   TYPE_4__ ;
typedef  struct TYPE_47__   TYPE_3__ ;
typedef  struct TYPE_46__   TYPE_36__ ;
typedef  struct TYPE_45__   TYPE_2__ ;
typedef  struct TYPE_44__   TYPE_1__ ;

/* Type definitions */
struct TYPE_47__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_48__ {scalar_t__ iEphCsr; scalar_t__ regAccum; scalar_t__ regResult; int /*<<< orphan*/  pFilter; TYPE_2__* pOwner; scalar_t__ iArgCol; struct TYPE_48__* pNextWin; int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pPartition; scalar_t__ nBufferCol; } ;
typedef  TYPE_4__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_52__ {scalar_t__ nExpr; } ;
struct TYPE_51__ {scalar_t__ nMem; scalar_t__ nTab; TYPE_3__* db; } ;
struct TYPE_50__ {scalar_t__ pPrior; int /*<<< orphan*/  selFlags; TYPE_5__* pSrc; scalar_t__ pOrderBy; scalar_t__ pEList; int /*<<< orphan*/ * pHaving; TYPE_8__* pGroupBy; int /*<<< orphan*/ * pWhere; TYPE_4__* pWin; } ;
struct TYPE_49__ {TYPE_36__* a; } ;
struct TYPE_46__ {TYPE_6__* pSelect; } ;
struct TYPE_44__ {int /*<<< orphan*/  pList; } ;
struct TYPE_45__ {TYPE_1__ x; } ;
typedef  TYPE_5__ SrcList ;
typedef  TYPE_6__ Select ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_OpenDup ; 
 int /*<<< orphan*/  OP_OpenEphemeral ; 
 int /*<<< orphan*/  SF_Aggregate ; 
 int /*<<< orphan*/  SF_Expanded ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  TK_INTEGER ; 
 TYPE_8__* FUNC0 (TYPE_7__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_4__*,TYPE_5__*,scalar_t__,TYPE_8__**) ; 
 scalar_t__ FUNC2 (TYPE_7__*,TYPE_36__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (TYPE_7__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_8__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 TYPE_8__* FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/ * sqlite3IntTokens ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_6__*) ; 
 TYPE_6__* FUNC11 (TYPE_7__*,TYPE_8__*,TYPE_5__*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC13 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

int FUNC16(Parse *pParse, Select *p){
  int rc = SQLITE_OK;
  if( p->pWin && p->pPrior==0 ){
    Vdbe *v = FUNC9(pParse);
    sqlite3 *db = pParse->db;
    Select *pSub = 0;             /* The subquery */
    SrcList *pSrc = p->pSrc;
    Expr *pWhere = p->pWhere;
    ExprList *pGroupBy = p->pGroupBy;
    Expr *pHaving = p->pHaving;
    ExprList *pSort = 0;

    ExprList *pSublist = 0;       /* Expression list for sub-query */
    Window *pMWin = p->pWin;      /* Master window object */
    Window *pWin;                 /* Window object iterator */

    p->pSrc = 0;
    p->pWhere = 0;
    p->pGroupBy = 0;
    p->pHaving = 0;

    /* Create the ORDER BY clause for the sub-select. This is the concatenation
    ** of the window PARTITION and ORDER BY clauses. Then, if this makes it
    ** redundant, remove the ORDER BY from the parent SELECT.  */
    pSort = FUNC8(db, pMWin->pPartition, 0);
    pSort = FUNC0(pParse, pSort, pMWin->pOrderBy);
    if( pSort && p->pOrderBy ){
      if( FUNC6(pSort, p->pOrderBy, -1)==0 ){
        FUNC7(db, p->pOrderBy);
        p->pOrderBy = 0;
      }
    }

    /* Assign a cursor number for the ephemeral table used to buffer rows.
    ** The OpenEphemeral instruction is coded later, after it is known how
    ** many columns the table will have.  */
    pMWin->iEphCsr = pParse->nTab++;
    pParse->nTab += 3;

    FUNC1(pParse, pMWin, pSrc, p->pEList, &pSublist);
    FUNC1(pParse, pMWin, pSrc, p->pOrderBy, &pSublist);
    pMWin->nBufferCol = (pSublist ? pSublist->nExpr : 0);

    /* Append the PARTITION BY and ORDER BY expressions to the to the 
    ** sub-select expression list. They are required to figure out where 
    ** boundaries for partitions and sets of peer rows lie.  */
    pSublist = FUNC0(pParse, pSublist, pMWin->pPartition);
    pSublist = FUNC0(pParse, pSublist, pMWin->pOrderBy);

    /* Append the arguments passed to each window function to the
    ** sub-select expression list. Also allocate two registers for each
    ** window function - one for the accumulator, another for interim
    ** results.  */
    for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
      pWin->iArgCol = (pSublist ? pSublist->nExpr : 0);
      pSublist = FUNC0(pParse, pSublist, pWin->pOwner->x.pList);
      if( pWin->pFilter ){
        Expr *pFilter = FUNC4(db, pWin->pFilter, 0);
        pSublist = FUNC5(pParse, pSublist, pFilter);
      }
      pWin->regAccum = ++pParse->nMem;
      pWin->regResult = ++pParse->nMem;
      FUNC15(v, OP_Null, 0, pWin->regAccum);
    }

    /* If there is no ORDER BY or PARTITION BY clause, and the window
    ** function accepts zero arguments, and there are no other columns
    ** selected (e.g. "SELECT row_number() OVER () FROM t1"), it is possible
    ** that pSublist is still NULL here. Add a constant expression here to 
    ** keep everything legal in this case. 
    */
    if( pSublist==0 ){
      pSublist = FUNC5(pParse, 0, 
          FUNC3(db, TK_INTEGER, &sqlite3IntTokens[0], 0)
      );
    }

    pSub = FUNC11(
        pParse, pSublist, pSrc, pWhere, pGroupBy, pHaving, pSort, 0, 0
    );
    p->pSrc = FUNC13(pParse, 0, 0, 0);
    if( p->pSrc ){
      p->pSrc->a[0].pSelect = pSub;
      FUNC14(pParse, p->pSrc);
      if( FUNC2(pParse, &p->pSrc->a[0]) ){
        rc = SQLITE_NOMEM;
      }else{
        pSub->selFlags |= SF_Expanded;
        p->selFlags &= ~SF_Aggregate;
        FUNC12(pParse, pSub, 0);
      }

      FUNC15(v, OP_OpenEphemeral, pMWin->iEphCsr, pSublist->nExpr);
      FUNC15(v, OP_OpenDup, pMWin->iEphCsr+1, pMWin->iEphCsr);
      FUNC15(v, OP_OpenDup, pMWin->iEphCsr+2, pMWin->iEphCsr);
      FUNC15(v, OP_OpenDup, pMWin->iEphCsr+3, pMWin->iEphCsr);
    }else{
      FUNC10(db, pSub);
    }
    if( db->mallocFailed ) rc = SQLITE_NOMEM;
  }

  return rc;
}