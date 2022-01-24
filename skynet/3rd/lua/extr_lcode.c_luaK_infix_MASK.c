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
typedef  int /*<<< orphan*/  expdesc ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int BinOpr ;

/* Variables and functions */
#define  OPR_ADD 142 
#define  OPR_AND 141 
#define  OPR_BAND 140 
#define  OPR_BOR 139 
#define  OPR_BXOR 138 
#define  OPR_CONCAT 137 
#define  OPR_DIV 136 
#define  OPR_IDIV 135 
#define  OPR_MOD 134 
#define  OPR_MUL 133 
#define  OPR_OR 132 
#define  OPR_POW 131 
#define  OPR_SHL 130 
#define  OPR_SHR 129 
#define  OPR_SUB 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5 (FuncState *fs, BinOpr op, expdesc *v) {
  switch (op) {
    case OPR_AND: {
      FUNC3(fs, v);  /* go ahead only if 'v' is true */
      break;
    }
    case OPR_OR: {
      FUNC2(fs, v);  /* go ahead only if 'v' is false */
      break;
    }
    case OPR_CONCAT: {
      FUNC1(fs, v);  /* operand must be on the 'stack' */
      break;
    }
    case OPR_ADD: case OPR_SUB:
    case OPR_MUL: case OPR_DIV: case OPR_IDIV:
    case OPR_MOD: case OPR_POW:
    case OPR_BAND: case OPR_BOR: case OPR_BXOR:
    case OPR_SHL: case OPR_SHR: {
      if (!FUNC4(v, NULL))
        FUNC0(fs, v);
      /* else keep numeral, which may be folded with 2nd operand */
      break;
    }
    default: {
      FUNC0(fs, v);
      break;
    }
  }
}