#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct SrcList_item {scalar_t__ zName; int /*<<< orphan*/ * pUsing; int /*<<< orphan*/ * pOn; int /*<<< orphan*/ * pSelect; int /*<<< orphan*/  zAlias; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_20__ {scalar_t__ n; scalar_t__ z; } ;
typedef  TYPE_1__ Token ;
struct TYPE_22__ {int /*<<< orphan*/ * db; } ;
struct TYPE_21__ {int nSrc; struct SrcList_item* a; } ;
typedef  TYPE_2__ SrcList ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_3__ Parse ;
typedef  int /*<<< orphan*/  IdList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ IN_RENAME_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (TYPE_3__*,TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 

SrcList *FUNC9(
  Parse *pParse,          /* Parsing context */
  SrcList *p,             /* The left part of the FROM clause already seen */
  Token *pTable,          /* Name of the table to add to the FROM clause */
  Token *pDatabase,       /* Name of the database containing pTable */
  Token *pAlias,          /* The right-hand side of the AS subexpression */
  Select *pSubquery,      /* A subquery used in place of a table name */
  Expr *pOn,              /* The ON clause of a join */
  IdList *pUsing          /* The USING clause of a join */
){
  struct SrcList_item *pItem;
  sqlite3 *db = pParse->db;
  if( !p && (pOn || pUsing) ){
    FUNC2(pParse, "a JOIN clause is required before %s", 
      (pOn ? "ON" : "USING")
    );
    goto append_from_error;
  }
  p = FUNC8(pParse, p, pTable, pDatabase);
  if( p==0 ){
    goto append_from_error;
  }
  FUNC1( p->nSrc>0 );
  pItem = &p->a[p->nSrc-1];
  FUNC1( (pTable==0)==(pDatabase==0) );
  FUNC1( pItem->zName==0 || pDatabase!=0 );
  if( IN_RENAME_OBJECT && pItem->zName ){
    Token *pToken = (FUNC0(pDatabase) && pDatabase->z) ? pDatabase : pTable;
    FUNC6(pParse, pItem->zName, pToken);
  }
  FUNC1( pAlias!=0 );
  if( pAlias->n ){
    pItem->zAlias = FUNC5(db, pAlias);
  }
  pItem->pSelect = pSubquery;
  pItem->pOn = pOn;
  pItem->pUsing = pUsing;
  return p;

 append_from_error:
  FUNC1( p==0 );
  FUNC3(db, pOn);
  FUNC4(db, pUsing);
  FUNC7(db, pSubquery);
  return 0;
}