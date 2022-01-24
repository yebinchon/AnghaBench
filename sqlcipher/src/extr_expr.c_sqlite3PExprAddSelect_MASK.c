#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  mallocFailed; } ;
struct TYPE_10__ {int /*<<< orphan*/ * pSelect; } ;
struct TYPE_12__ {TYPE_1__ x; } ;
struct TYPE_11__ {TYPE_4__* db; } ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ Expr ;

/* Variables and functions */
 int EP_Subquery ; 
 int EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 

void FUNC4(Parse *pParse, Expr *pExpr, Select *pSelect){
  if( pExpr ){
    pExpr->x.pSelect = pSelect;
    FUNC0(pExpr, EP_xIsSelect|EP_Subquery);
    FUNC2(pParse, pExpr);
  }else{
    FUNC1( pParse->db->mallocFailed );
    FUNC3(pParse->db, pSelect);
  }
}