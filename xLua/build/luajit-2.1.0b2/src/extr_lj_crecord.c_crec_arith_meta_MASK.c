#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int* base; int /*<<< orphan*/  postproc; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_16__ {int /*<<< orphan*/  info; } ;
struct TYPE_15__ {int nres; scalar_t__ data; int /*<<< orphan*/ * argv; } ;
struct TYPE_13__ {int /*<<< orphan*/  ctypeid; } ;
typedef  scalar_t__ TRef ;
typedef  TYPE_2__ RecordFFData ;
typedef  scalar_t__ MMS ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_3__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_PTR ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  LJ_POST_FIXGUARD ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 scalar_t__ MM_eq ; 
 scalar_t__ TREF_FALSE ; 
 int TREF_FRAME ; 
 scalar_t__ TREF_TRUE ; 
 TYPE_11__* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TRef FUNC13(jit_State *J, TRef *sp, CType **s, CTState *cts,
			    RecordFFData *rd)
{
  cTValue *tv = NULL;
  if (J->base[0]) {
    if (FUNC11(&rd->argv[0])) {
      CTypeID id = FUNC1(J, J->base[0], &rd->argv[0])->ctypeid;
      CType *ct = FUNC5(cts, id);
      if (FUNC4(ct->info)) id = FUNC2(ct->info);
      tv = FUNC7(cts, id, (MMS)rd->data);
    }
    if (!tv && J->base[1] && FUNC11(&rd->argv[1])) {
      CTypeID id = FUNC1(J, J->base[1], &rd->argv[1])->ctypeid;
      CType *ct = FUNC5(cts, id);
      if (FUNC4(ct->info)) id = FUNC2(ct->info);
      tv = FUNC7(cts, id, (MMS)rd->data);
    }
  }
  if (tv) {
    if (FUNC12(tv)) {
      J->base[-1] = FUNC8(J, FUNC6(tv)) | TREF_FRAME;
      rd->nres = -1;  /* Pending tailcall. */
      return 0;
    }  /* NYI: non-function metamethods. */
  } else if ((MMS)rd->data == MM_eq) {  /* Fallback cdata pointer comparison. */
    if (sp[0] && sp[1] && FUNC3(s[0]->info) == FUNC3(s[1]->info)) {
      /* Assume true comparison. Fixup and emit pending guard later. */
      FUNC9(J, FUNC0(IR_EQ, IRT_PTR), sp[0], sp[1]);
      J->postproc = LJ_POST_FIXGUARD;
      return TREF_TRUE;
    } else {
      return TREF_FALSE;
    }
  }
  FUNC10(J, LJ_TRERR_BADTYPE);
  return 0;
}