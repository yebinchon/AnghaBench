#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int aux; } ;
struct TYPE_19__ {TYPE_1__ s; } ;
struct TYPE_22__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_21__ {int flags; int nactvar; int /*<<< orphan*/  pc; } ;
struct TYPE_20__ {char tok; TYPE_4__* fs; } ;
typedef  TYPE_3__ LexState ;
typedef  TYPE_4__ FuncState ;
typedef  TYPE_5__ ExpDesc ;
typedef  int BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int) ; 
 scalar_t__ BC_CALL ; 
 scalar_t__ BC_CALLT ; 
 scalar_t__ BC_RET ; 
 scalar_t__ BC_RET0 ; 
 scalar_t__ BC_RET1 ; 
 scalar_t__ BC_RETM ; 
 int /*<<< orphan*/  BC_UCLO ; 
 scalar_t__ BC_VARG ; 
 int PROTO_CHILD ; 
 int PROTO_HAS_RETURN ; 
 scalar_t__ VCALL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC7 (TYPE_3__*,TYPE_5__*) ; 
 int FUNC8 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(LexState *ls)
{
  BCIns ins;
  FuncState *fs = ls->fs;
  FUNC10(ls);  /* Skip 'return'. */
  fs->flags |= PROTO_HAS_RETURN;
  if (FUNC11(ls->tok) || ls->tok == ';') {  /* Bare return. */
    ins = FUNC0(BC_RET0, 0, 1);
  } else {  /* Return with one or more values. */
    ExpDesc e;  /* Receives the _last_ expression in the list. */
    BCReg nret = FUNC7(ls, &e);
    if (nret == 1) {  /* Return one result. */
      if (e.k == VCALL) {  /* Check for tail call. */
	BCIns *ip = FUNC6(fs, &e);
	/* It doesn't pay off to add BC_VARGT just for 'return ...'. */
	if (FUNC3(*ip) == BC_VARG) goto notailcall;
	fs->pc--;
	ins = FUNC0(FUNC3(*ip)-BC_CALL+BC_CALLT, FUNC1(*ip), FUNC2(*ip));
      } else {  /* Can return the result from any register. */
	ins = FUNC0(BC_RET1, FUNC8(fs, &e), 2);
      }
    } else {
      if (e.k == VCALL) {  /* Append all results from a call. */
      notailcall:
	FUNC12(FUNC6(fs, &e), 0);
	ins = FUNC0(BC_RETM, fs->nactvar, e.u.s.aux - fs->nactvar);
      } else {
	FUNC9(fs, &e);  /* Force contiguous registers. */
	ins = FUNC0(BC_RET, fs->nactvar, nret+1);
      }
    }
  }
  if (fs->flags & PROTO_CHILD)
    FUNC4(fs, BC_UCLO, 0, 0);  /* May need to close upvalues first. */
  FUNC5(fs, ins);
}