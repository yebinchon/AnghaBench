#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* base; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_10__ {scalar_t__ data; int nres; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_2__ RecordFFData ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  int /*<<< orphan*/  CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_STR ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 int /*<<< orphan*/  MM_index ; 
 int /*<<< orphan*/  MM_newindex ; 
 int TREF_FRAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(jit_State *J, CTState *cts, CType *ct,
			    RecordFFData *rd)
{
  CTypeID id = FUNC1(cts, ct);
  cTValue *tv = FUNC4(cts, id, rd->data ? MM_newindex : MM_index);
  if (!tv)
    FUNC9(J, LJ_TRERR_BADTYPE);
  if (FUNC13(tv)) {
    J->base[-1] = FUNC5(J, FUNC3(tv)) | TREF_FRAME;
    rd->nres = -1;  /* Pending tailcall. */
  } else if (rd->data == 0 && FUNC14(tv) && FUNC12(J->base[1])) {
    /* Specialize to result of __index lookup. */
    cTValue *o = FUNC8(J->L, FUNC11(tv), &rd->argv[1]);
    J->base[0] = FUNC7(J, o);
    if (!J->base[0])
      FUNC9(J, LJ_TRERR_BADTYPE);
    /* Always specialize to the key. */
    FUNC2(FUNC0(IR_EQ, IRT_STR), J->base[1], FUNC6(J, FUNC10(&rd->argv[1])));
  } else {
    /* NYI: resolving of non-function metamethods. */
    /* NYI: non-string keys for __index table. */
    /* NYI: stores to __newindex table. */
    FUNC9(J, LJ_TRERR_BADTYPE);
  }
}