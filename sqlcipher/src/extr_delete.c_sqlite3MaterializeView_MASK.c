#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_1__* aDb; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_21__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  pSchema; } ;
typedef  TYPE_4__ Table ;
struct TYPE_23__ {TYPE_3__* db; } ;
struct TYPE_22__ {int nSrc; TYPE_2__* a; } ;
struct TYPE_19__ {scalar_t__ pOn; scalar_t__ pUsing; void* zDatabase; void* zName; } ;
struct TYPE_18__ {int /*<<< orphan*/  zDbSName; } ;
typedef  TYPE_5__ SrcList ;
typedef  int /*<<< orphan*/  SelectDest ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_6__ Parse ;
typedef  int /*<<< orphan*/  ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  SF_IncludeHidden ; 
 int /*<<< orphan*/  SRT_EphemTab ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(
  Parse *pParse,       /* Parsing context */
  Table *pView,        /* View definition */
  Expr *pWhere,        /* Optional WHERE clause to be added */
  ExprList *pOrderBy,  /* Optional ORDER BY clause */
  Expr *pLimit,        /* Optional LIMIT clause */
  int iCur             /* Cursor number for ephemeral table */
){
  SelectDest dest;
  Select *pSel;
  SrcList *pFrom;
  sqlite3 *db = pParse->db;
  int iDb = FUNC3(db, pView->pSchema);
  pWhere = FUNC2(db, pWhere, 0);
  pFrom = FUNC8(pParse, 0, 0, 0);
  if( pFrom ){
    FUNC0( pFrom->nSrc==1 );
    pFrom->a[0].zName = FUNC1(db, pView->zName);
    pFrom->a[0].zDatabase = FUNC1(db, db->aDb[iDb].zDbSName);
    FUNC0( pFrom->a[0].pOn==0 );
    FUNC0( pFrom->a[0].pUsing==0 );
  }
  pSel = FUNC7(pParse, 0, pFrom, pWhere, 0, 0, pOrderBy, 
                          SF_IncludeHidden, pLimit);
  FUNC6(&dest, SRT_EphemTab, iCur);
  FUNC4(pParse, pSel, &dest);
  FUNC5(db, pSel);
}