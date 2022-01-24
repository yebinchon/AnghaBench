#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_11__ {int ffid; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
struct TYPE_12__ {scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_2__ GCproto ;
typedef  TYPE_3__ GCfunc ;

/* Variables and functions */
#define  FF_coroutine_wrap_aux 129 
#define  FF_string_gmatch_aux 128 
 int /*<<< orphan*/  IRFL_FUNC_FFID ; 
 int /*<<< orphan*/  IRFL_FUNC_PC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_FUNC ; 
 int /*<<< orphan*/  IRT_INT ; 
 int /*<<< orphan*/  IRT_PGC ; 
 int /*<<< orphan*/  IRT_PROTO ; 
 int /*<<< orphan*/  IRT_U8 ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 scalar_t__ PROTO_CLC_POLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static TRef FUNC11(jit_State *J, GCfunc *fn, TRef tr)
{
  TRef kfunc;
  if (FUNC4(fn)) {
    GCproto *pt = FUNC3(fn);
    /* Too many closures created? Probably not a monomorphic function. */
    if (pt->flags >= PROTO_CLC_POLY) {  /* Specialize to prototype instead. */
      TRef trpt = FUNC2(FUNC0(IR_FLOAD, IRT_PGC), tr, IRFL_FUNC_PC);
      FUNC2(FUNC1(IR_EQ, IRT_PGC), trpt, FUNC8(J, FUNC10(pt)));
      (void)FUNC6(J, FUNC9(pt), IRT_PROTO);  /* Prevent GC of proto. */
      return tr;
    }
  } else {
    /* Don't specialize to non-monomorphic builtins. */
    switch (fn->c.ffid) {
    case FF_coroutine_wrap_aux:
    case FF_string_gmatch_aux:
      /* NYI: io_file_iter doesn't have an ffid, yet. */
      {  /* Specialize to the ffid. */
	TRef trid = FUNC2(FUNC0(IR_FLOAD, IRT_U8), tr, IRFL_FUNC_FFID);
	FUNC2(FUNC1(IR_EQ, IRT_INT), trid, FUNC7(J, fn->c.ffid));
      }
      return tr;
    default:
      /* NYI: don't specialize to non-monomorphic C functions. */
      break;
    }
  }
  /* Otherwise specialize to the function (closure) value itself. */
  kfunc = FUNC5(J, fn);
  FUNC2(FUNC1(IR_EQ, IRT_FUNC), tr, kfunc);
  return kfunc;
}