#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__* aLimit; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_18__ {TYPE_4__* pList; } ;
struct TYPE_22__ {TYPE_1__ x; } ;
struct TYPE_21__ {scalar_t__ nExpr; } ;
struct TYPE_20__ {TYPE_2__* db; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ ExprList ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_Distinct ; 
 int /*<<< orphan*/  EP_HasFunc ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int SF_Distinct ; 
 size_t SQLITE_LIMIT_FUNCTION_ARG ; 
 int /*<<< orphan*/  TK_FUNCTION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_5__*) ; 

Expr *FUNC7(
  Parse *pParse,        /* Parsing context */
  ExprList *pList,      /* Argument list */
  Token *pToken,        /* Name of the function */
  int eDistinct         /* SF_Distinct or SF_ALL or 0 */
){
  Expr *pNew;
  sqlite3 *db = pParse->db;
  FUNC2( *pToken );
  pNew = FUNC4(db, TK_FUNCTION, pToken, 1);
  if( pNew==0 ){
    FUNC5(db, pList); /* Avoid memory leak when malloc fails */
    return 0;
  }
  if( pList && pList->nExpr > pParse->db->aLimit[SQLITE_LIMIT_FUNCTION_ARG] ){
    FUNC3(pParse, "too many arguments on function %T", pToken);
  }
  pNew->x.pList = pList;
  FUNC1(pNew, EP_HasFunc);
  FUNC2( !FUNC0(pNew, EP_xIsSelect) );
  FUNC6(pParse, pNew);
  if( eDistinct==SF_Distinct ) FUNC1(pNew, EP_Distinct);
  return pNew;
}