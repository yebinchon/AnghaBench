#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * base; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_11__ {scalar_t__ data; int /*<<< orphan*/ * argv; } ;
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
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(jit_State *J, CTState *cts, CType *ct,
			    RecordFFData *rd)
{
  CTypeID id = FUNC2(cts, ct);
  cTValue *tv = FUNC4(cts, id, rd->data ? MM_newindex : MM_index);
  if (!tv)
    FUNC8(J, LJ_TRERR_BADTYPE);
  if (FUNC12(tv)) {
    FUNC1(J, rd, tv);
  } else if (rd->data == 0 && FUNC13(tv) && FUNC11(J->base[1])) {
    /* Specialize to result of __index lookup. */
    cTValue *o = FUNC7(J->L, FUNC10(tv), &rd->argv[1]);
    J->base[0] = FUNC6(J, o);
    if (!J->base[0])
      FUNC8(J, LJ_TRERR_BADTYPE);
    /* Always specialize to the key. */
    FUNC3(FUNC0(IR_EQ, IRT_STR), J->base[1], FUNC5(J, FUNC9(&rd->argv[1])));
  } else {
    /* NYI: resolving of non-function metamethods. */
    /* NYI: non-string keys for __index table. */
    /* NYI: stores to __newindex table. */
    FUNC8(J, LJ_TRERR_BADTYPE);
  }
}