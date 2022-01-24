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
 int FUNC0 (char const**) ; 
 int OE_Abort ; 
#define  OP_Ge 129 
#define  OP_Gt 128 
 int /*<<< orphan*/  OP_Halt ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_MustBeInt ; 
 int /*<<< orphan*/  OP_String8 ; 
 int /*<<< orphan*/  P4_STATIC ; 
 int SQLITE_AFF_NUMERIC ; 
 int SQLITE_ERROR ; 
 int SQLITE_JUMPIFNULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int WINDOW_STARTING_NUM ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int const,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(Parse *pParse, int reg, int eCond){
  static const char *azErr[] = {
    "frame starting offset must be a non-negative integer",
    "frame ending offset must be a non-negative integer",
    "second argument to nth_value must be a positive integer",
    "frame starting offset must be a non-negative number",
    "frame ending offset must be a non-negative number",
  };
  static int aOp[] = { OP_Ge, OP_Ge, OP_Gt, OP_Ge, OP_Ge };
  Vdbe *v = FUNC6(pParse);
  int regZero = FUNC5(pParse);
  FUNC4( eCond>=0 && eCond<FUNC0(azErr) );
  FUNC9(v, OP_Integer, 0, regZero);
  if( eCond>=WINDOW_STARTING_NUM ){
    int regString = FUNC5(pParse);
    FUNC11(v, OP_String8, 0, regString, 0, "", P4_STATIC);
    FUNC10(v, OP_Ge, regString, FUNC14(v)+2, reg);
    FUNC13(v, SQLITE_AFF_NUMERIC|SQLITE_JUMPIFNULL);
    FUNC1(v);
    FUNC4( eCond==3 || eCond==4 );
    FUNC2(v, eCond==3);
    FUNC2(v, eCond==4);
  }else{
    FUNC9(v, OP_MustBeInt, reg, FUNC14(v)+2);
    FUNC1(v);
    FUNC4( eCond==0 || eCond==1 || eCond==2 );
    FUNC2(v, eCond==0);
    FUNC2(v, eCond==1);
    FUNC2(v, eCond==2);
  }
  FUNC10(v, aOp[eCond], regZero, FUNC14(v)+2, reg);
  FUNC3(v, eCond==0); /* NULL case captured by */
  FUNC3(v, eCond==1); /*   the OP_MustBeInt */
  FUNC3(v, eCond==2);
  FUNC3(v, eCond==3); /* NULL case caught by */
  FUNC3(v, eCond==4); /*   the OP_Ge */
  FUNC7(pParse);
  FUNC9(v, OP_Halt, SQLITE_ERROR, OE_Abort);
  FUNC12(v, (void*)azErr[eCond], P4_STATIC);
  FUNC8(pParse, regZero);
}