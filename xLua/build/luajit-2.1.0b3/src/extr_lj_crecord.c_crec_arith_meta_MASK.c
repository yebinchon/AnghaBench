#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  postproc; scalar_t__* base; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_17__ {int /*<<< orphan*/  info; } ;
struct TYPE_16__ {scalar_t__ data; int /*<<< orphan*/ * argv; } ;
struct TYPE_14__ {int /*<<< orphan*/  ctypeid; } ;
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
 scalar_t__ TREF_TRUE ; 
 TYPE_12__* FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TRef FUNC12(jit_State *J, TRef *sp, CType **s, CTState *cts,
			    RecordFFData *rd)
{
  cTValue *tv = NULL;
  if (J->base[0]) {
    if (FUNC10(&rd->argv[0])) {
      CTypeID id = FUNC1(J, J->base[0], &rd->argv[0])->ctypeid;
      CType *ct = FUNC6(cts, id);
      if (FUNC5(ct->info)) id = FUNC3(ct->info);
      tv = FUNC7(cts, id, (MMS)rd->data);
    }
    if (!tv && J->base[1] && FUNC10(&rd->argv[1])) {
      CTypeID id = FUNC1(J, J->base[1], &rd->argv[1])->ctypeid;
      CType *ct = FUNC6(cts, id);
      if (FUNC5(ct->info)) id = FUNC3(ct->info);
      tv = FUNC7(cts, id, (MMS)rd->data);
    }
  }
  if (tv) {
    if (FUNC11(tv)) {
      FUNC2(J, rd, tv);
      return 0;
    }  /* NYI: non-function metamethods. */
  } else if ((MMS)rd->data == MM_eq) {  /* Fallback cdata pointer comparison. */
    if (sp[0] && sp[1] && FUNC4(s[0]->info) == FUNC4(s[1]->info)) {
      /* Assume true comparison. Fixup and emit pending guard later. */
      FUNC8(J, FUNC0(IR_EQ, IRT_PTR), sp[0], sp[1]);
      J->postproc = LJ_POST_FIXGUARD;
      return TREF_TRUE;
    } else {
      return TREF_FALSE;
    }
  }
  FUNC9(J, LJ_TRERR_BADTYPE);
  return 0;
}