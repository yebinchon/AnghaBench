#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t iDb; } ;
struct TYPE_13__ {TYPE_1__ init; TYPE_2__* aDb; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_14__ {int /*<<< orphan*/  pCheck; } ;
typedef  TYPE_4__ Table ;
struct TYPE_16__ {scalar_t__ n; } ;
struct TYPE_15__ {TYPE_3__* db; TYPE_7__ constraintName; TYPE_4__* pNewTable; } ;
struct TYPE_12__ {int /*<<< orphan*/  pBt; } ;
typedef  TYPE_5__ Parse ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  IN_DECLARE_VTAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_7__*,int) ; 

void FUNC4(
  Parse *pParse,    /* Parsing context */
  Expr *pCheckExpr  /* The check expression */
){
#ifndef SQLITE_OMIT_CHECK
  Table *pTab = pParse->pNewTable;
  sqlite3 *db = pParse->db;
  if( pTab && !IN_DECLARE_VTAB
   && !FUNC0(db->aDb[db->init.iDb].pBt)
  ){
    pTab->pCheck = FUNC2(pParse, pTab->pCheck, pCheckExpr);
    if( pParse->constraintName.n ){
      FUNC3(pParse, pTab->pCheck, &pParse->constraintName, 1);
    }
  }else
#endif
  {
    FUNC1(pParse->db, pCheckExpr);
  }
}