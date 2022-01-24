#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  top; TYPE_4__* ci; } ;
typedef  TYPE_3__ lua_State ;
struct TYPE_9__ {int base; int /*<<< orphan*/ * savedpc; } ;
struct TYPE_10__ {TYPE_1__ l; } ;
struct TYPE_12__ {int callstatus; int /*<<< orphan*/  top; TYPE_2__ u; } ;
typedef  int StkId ;
typedef  int OpCode ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  TYPE_4__ CallInfo ;

/* Variables and functions */
 int CIST_LEQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  OP_ADD 154 
#define  OP_BAND 153 
#define  OP_BNOT 152 
#define  OP_BOR 151 
#define  OP_BXOR 150 
#define  OP_CALL 149 
#define  OP_CONCAT 148 
#define  OP_DIV 147 
#define  OP_EQ 146 
#define  OP_GETTABLE 145 
#define  OP_GETTABUP 144 
#define  OP_IDIV 143 
 int OP_JMP ; 
#define  OP_LE 142 
#define  OP_LEN 141 
#define  OP_LT 140 
#define  OP_MOD 139 
#define  OP_MUL 138 
#define  OP_POW 137 
#define  OP_SELF 136 
#define  OP_SETTABLE 135 
#define  OP_SETTABUP 134 
#define  OP_SHL 133 
#define  OP_SHR 132 
#define  OP_SUB 131 
#define  OP_TAILCALL 130 
#define  OP_TFORCALL 129 
 int OP_TFORLOOP ; 
#define  OP_UNM 128 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

void FUNC10 (lua_State *L) {
  CallInfo *ci = L->ci;
  StkId base = ci->u.l.base;
  Instruction inst = *(ci->u.l.savedpc - 1);  /* interrupted instruction */
  OpCode op = FUNC3(inst);
  switch (op) {  /* finish its execution */
    case OP_ADD: case OP_SUB: case OP_MUL: case OP_DIV: case OP_IDIV:
    case OP_BAND: case OP_BOR: case OP_BXOR: case OP_SHL: case OP_SHR:
    case OP_MOD: case OP_POW:
    case OP_UNM: case OP_BNOT: case OP_LEN:
    case OP_GETTABUP: case OP_GETTABLE: case OP_SELF: {
      FUNC9(L, base + FUNC0(inst), --L->top);
      break;
    }
    case OP_LE: case OP_LT: case OP_EQ: {
      int res = !FUNC5(L->top - 1);
      L->top--;
      if (ci->callstatus & CIST_LEQ) {  /* "<=" using "<" instead? */
        FUNC7(op == OP_LE);
        ci->callstatus ^= CIST_LEQ;  /* clear mark */
        res = !res;  /* negate result */
      }
      FUNC7(FUNC3(*ci->u.l.savedpc) == OP_JMP);
      if (res != FUNC0(inst))  /* condition failed? */
        ci->u.l.savedpc++;  /* skip jump instruction */
      break;
    }
    case OP_CONCAT: {
      StkId top = L->top - 1;  /* top when 'luaT_trybinTM' was called */
      int b = FUNC1(inst);      /* first element to concatenate */
      int total = FUNC4(top - 1 - (base + b));  /* yet to concatenate */
      FUNC8(L, top - 2, top);  /* put TM result in proper position */
      if (total > 1) {  /* are there elements to concat? */
        L->top = top - 1;  /* top is one after last element (at top-2) */
        FUNC6(L, total);  /* concat them (may yield again) */
      }
      /* move final result to final position */
      FUNC8(L, ci->u.l.base + FUNC0(inst), L->top - 1);
      L->top = ci->top;  /* restore top */
      break;
    }
    case OP_TFORCALL: {
      FUNC7(FUNC3(*ci->u.l.savedpc) == OP_TFORLOOP);
      L->top = ci->top;  /* correct top */
      break;
    }
    case OP_CALL: {
      if (FUNC2(inst) - 1 >= 0)  /* nresults >= 0? */
        L->top = ci->top;  /* adjust results */
      break;
    }
    case OP_TAILCALL: case OP_SETTABUP: case OP_SETTABLE:
      break;
    default: FUNC7(0);
  }
}