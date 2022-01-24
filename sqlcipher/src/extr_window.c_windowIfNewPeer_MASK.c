#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_4__ {int nExpr; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  TYPE_1__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Compare ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_Jump ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  Parse *pParse,
  ExprList *pOrderBy,
  int regNew,                     /* First in array of new values */
  int regOld,                     /* First in array of old values */
  int addr                        /* Jump here */
){
  Vdbe *v = FUNC1(pParse);
  if( pOrderBy ){
    int nVal = pOrderBy->nExpr;
    KeyInfo *pKeyInfo = FUNC2(pParse, pOrderBy, 0, 0);
    FUNC4(v, OP_Compare, regOld, regNew, nVal);
    FUNC5(v, (void*)pKeyInfo, P4_KEYINFO);
    FUNC4(v, OP_Jump, 
      FUNC6(v)+1, addr, FUNC6(v)+1
    );
    FUNC0(v);
    FUNC4(v, OP_Copy, regNew, regOld, nVal-1);
  }else{
    FUNC3(v, OP_Goto, 0, addr);
  }
}