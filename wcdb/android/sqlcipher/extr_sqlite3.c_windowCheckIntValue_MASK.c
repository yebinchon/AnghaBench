#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int OE_Abort ; 
#define  OP_Ge 129 
#define  OP_Gt 128 
 int /*<<< orphan*/  OP_Halt ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_MustBeInt ; 
 int /*<<< orphan*/  P4_STATIC ; 
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(Parse *pParse, int reg, int eCond){
  static const char *azErr[] = {
    "frame starting offset must be a non-negative integer",
    "frame ending offset must be a non-negative integer",
    "second argument to nth_value must be a positive integer"
  };
  static int aOp[] = { OP_Ge, OP_Ge, OP_Gt };
  Vdbe *v = FUNC4(pParse);
  int regZero = FUNC3(pParse);
  FUNC2( eCond==0 || eCond==1 || eCond==2 );
  FUNC7(v, OP_Integer, 0, regZero);
  FUNC7(v, OP_MustBeInt, reg, FUNC10(v)+2);
  FUNC0(v, eCond==0);
  FUNC0(v, eCond==1);
  FUNC0(v, eCond==2);
  FUNC8(v, aOp[eCond], regZero, FUNC10(v)+2, reg);
  FUNC1(v, eCond==0);
  FUNC1(v, eCond==1);
  FUNC1(v, eCond==2);
  FUNC5(pParse);
  FUNC7(v, OP_Halt, SQLITE_ERROR, OE_Abort);
  FUNC9(v, (void*)azErr[eCond], P4_STATIC);
  FUNC6(pParse, regZero);
}