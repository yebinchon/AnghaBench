#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_4__ {int nCol; TYPE_2__* aCol; int /*<<< orphan*/  zName; int /*<<< orphan*/  pSelect; } ;
typedef  TYPE_1__ Table ;
struct TYPE_5__ {scalar_t__ affinity; int /*<<< orphan*/  pDflt; int /*<<< orphan*/  zName; } ;
typedef  TYPE_2__ Column ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_RealAffinity ; 
 int /*<<< orphan*/  P4_MEM ; 
 scalar_t__ SQLITE_AFF_REAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(Vdbe *v, Table *pTab, int i, int iReg){
  FUNC2( pTab!=0 );
  if( !pTab->pSelect ){
    sqlite3_value *pValue = 0;
    u8 enc = FUNC0(FUNC6(v));
    Column *pCol = &pTab->aCol[i];
    FUNC1((v, "%s.%s", pTab->zName, pCol->zName));
    FUNC2( i<pTab->nCol );
    FUNC3(FUNC6(v), pCol->pDflt, enc, 
                         pCol->affinity, &pValue);
    if( pValue ){
      FUNC5(v, pValue, P4_MEM);
    }
  }
#ifndef SQLITE_OMIT_FLOATING_POINT
  if( pTab->aCol[i].affinity==SQLITE_AFF_REAL ){
    FUNC4(v, OP_RealAffinity, iReg);
  }
#endif
}