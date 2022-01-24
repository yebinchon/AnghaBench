#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x ;
struct TYPE_22__ {int /*<<< orphan*/  busy; } ;
struct TYPE_24__ {TYPE_1__ init; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_25__ {int nCol; TYPE_7__* aCol; } ;
typedef  TYPE_4__ Table ;
struct TYPE_28__ {TYPE_6__* pDflt; int /*<<< orphan*/  zName; } ;
struct TYPE_23__ {int /*<<< orphan*/  zToken; } ;
struct TYPE_27__ {TYPE_2__ u; int /*<<< orphan*/  flags; struct TYPE_27__* pLeft; int /*<<< orphan*/  op; } ;
struct TYPE_26__ {TYPE_4__* pNewTable; TYPE_3__* db; } ;
typedef  TYPE_5__ Parse ;
typedef  TYPE_6__ Expr ;
typedef  TYPE_7__ Column ;

/* Variables and functions */
 int /*<<< orphan*/  EP_Skip ; 
 int /*<<< orphan*/  EXPRDUP_REDUCE ; 
 scalar_t__ IN_RENAME_OBJECT ; 
 int /*<<< orphan*/  TK_SPAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_6__*) ; 
 TYPE_6__* FUNC5 (TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_6__*) ; 

void FUNC8(
  Parse *pParse,           /* Parsing context */
  Expr *pExpr,             /* The parsed expression of the default value */
  const char *zStart,      /* Start of the default value text */
  const char *zEnd         /* First character past end of defaut value text */
){
  Table *p;
  Column *pCol;
  sqlite3 *db = pParse->db;
  p = pParse->pNewTable;
  if( p!=0 ){
    pCol = &(p->aCol[p->nCol-1]);
    if( !FUNC6(pExpr, db->init.busy) ){
      FUNC3(pParse, "default value of column [%s] is not constant",
          pCol->zName);
    }else{
      /* A copy of pExpr is used instead of the original, as pExpr contains
      ** tokens that point to volatile memory.
      */
      Expr x;
      FUNC4(db, pCol->pDflt);
      FUNC0(&x, 0, sizeof(x));
      x.op = TK_SPAN;
      x.u.zToken = FUNC2(db, zStart, zEnd);
      x.pLeft = pExpr;
      x.flags = EP_Skip;
      pCol->pDflt = FUNC5(db, &x, EXPRDUP_REDUCE);
      FUNC1(db, x.u.zToken);
    }
  }
  if( IN_RENAME_OBJECT ){
    FUNC7(pParse, pExpr);
  }
  FUNC4(db, pExpr);
}