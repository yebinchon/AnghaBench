#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_7__ {int iPKey; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int OP_Column ; 
 int /*<<< orphan*/  OP_Rowid ; 
 int OP_VColumn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int) ; 

void FUNC7(
  Vdbe *v,        /* The VDBE under construction */
  Table *pTab,    /* The table containing the value */
  int iTabCur,    /* The table cursor.  Or the PK cursor for WITHOUT ROWID */
  int iCol,       /* Index of the column to extract */
  int regOut      /* Extract the value into this register */
){
  if( pTab==0 ){
    FUNC6(v, OP_Column, iTabCur, iCol, regOut);
    return;
  }
  if( iCol<0 || iCol==pTab->iPKey ){
    FUNC5(v, OP_Rowid, iTabCur, regOut);
  }else{
    int op = FUNC1(pTab) ? OP_VColumn : OP_Column;
    int x = iCol;
    if( !FUNC0(pTab) && !FUNC1(pTab) ){
      x = FUNC3(FUNC4(pTab), iCol);
    }
    FUNC6(v, op, iTabCur, x, regOut);
  }
  if( iCol>=0 ){
    FUNC2(v, pTab, iCol, regOut);
  }
}