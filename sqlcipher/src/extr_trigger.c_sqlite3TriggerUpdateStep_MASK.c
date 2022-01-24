#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int /*<<< orphan*/  orconf; int /*<<< orphan*/ * pWhere; int /*<<< orphan*/ * pExprList; } ;
typedef  TYPE_1__ TriggerStep ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_8__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ Parse ;
typedef  int /*<<< orphan*/  ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EXPRDUP_REDUCE ; 
 scalar_t__ IN_RENAME_OBJECT ; 
 int /*<<< orphan*/  TK_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*) ; 

TriggerStep *FUNC5(
  Parse *pParse,          /* Parser */
  Token *pTableName,   /* Name of the table to be updated */
  ExprList *pEList,    /* The SET clause: list of column and new values */
  Expr *pWhere,        /* The WHERE clause */
  u8 orconf,           /* The conflict algorithm. (OE_Abort, OE_Ignore, etc) */
  const char *zStart,  /* Start of SQL text */
  const char *zEnd     /* End of SQL text */
){
  sqlite3 *db = pParse->db;
  TriggerStep *pTriggerStep;

  pTriggerStep = FUNC4(pParse, TK_UPDATE, pTableName,zStart,zEnd);
  if( pTriggerStep ){
    if( IN_RENAME_OBJECT ){
      pTriggerStep->pExprList = pEList;
      pTriggerStep->pWhere = pWhere;
      pEList = 0;
      pWhere = 0;
    }else{
      pTriggerStep->pExprList = FUNC3(db, pEList, EXPRDUP_REDUCE);
      pTriggerStep->pWhere = FUNC1(db, pWhere, EXPRDUP_REDUCE);
    }
    pTriggerStep->orconf = orconf;
  }
  FUNC2(db, pEList);
  FUNC0(db, pWhere);
  return pTriggerStep;
}