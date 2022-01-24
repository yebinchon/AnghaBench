#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_12__ {scalar_t__* base; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int int32_t ;
struct TYPE_13__ {int /*<<< orphan*/ * argv; } ;
typedef  scalar_t__ TRef ;
typedef  int SFormat ;
typedef  TYPE_2__ RecordFFData ;
typedef  scalar_t__ CTypeID ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 scalar_t__ CTID_INT32 ; 
 int /*<<< orphan*/  IRCALL_lj_strfmt_putfxint ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_INT ; 
 int /*<<< orphan*/  IRT_U64 ; 
 int /*<<< orphan*/  IR_BAND ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int STRFMT_F_UPPER ; 
 int STRFMT_SH_PREC ; 
 int STRFMT_T_HEX ; 
 int STRFMT_UINT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*,scalar_t__) ; 

TRef FUNC16(jit_State *J, RecordFFData *rd, TRef hdr)
{
  CTState *cts = FUNC6(FUNC3(J));
  CTypeID id = FUNC4(cts, &rd->argv[0]);
  TRef tr, trsf = J->base[1];
  SFormat sf = (STRFMT_UINT|STRFMT_T_HEX);
  int32_t n;
  if (trsf) {
    CTypeID id2 = 0;
    n = (int32_t)FUNC10(J->L, 2, &id2);
    if (id2)
      trsf = FUNC5(J, FUNC7(cts, CTID_INT32), 0, trsf, &rd->argv[1]);
    else
      trsf = FUNC15(J, trsf);
    FUNC9(FUNC1(IR_EQ), trsf, FUNC12(J, n));  /* Specialize to n. */
  } else {
    n = id ? 16 : 8;
  }
  if (n < 0) { n = -n; sf |= STRFMT_F_UPPER; }
  sf |= ((SFormat)((n+1)&255) << STRFMT_SH_PREC);
  if (id) {
    tr = FUNC5(J, FUNC7(cts, id), 0, J->base[0], &rd->argv[0]);
    if (n < 16)
      tr = FUNC9(FUNC0(IR_BAND, IRT_U64), tr,
		  FUNC13(J, ((uint64_t)1 << 4*n)-1));
  } else {
    tr = FUNC15(J, J->base[0]);
    if (n < 8)
      tr = FUNC9(FUNC2(IR_BAND), tr, FUNC12(J, (int32_t)((1u << 4*n)-1)));
    tr = FUNC8(tr, IRT_U64, IRT_INT, 0);  /* No sign-extension. */
    FUNC14(J);
  }
  return FUNC11(J, IRCALL_lj_strfmt_putfxint, hdr, FUNC12(J, sf), tr);
}