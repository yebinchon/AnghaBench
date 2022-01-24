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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  intptr_t ptrdiff_t ;
struct TYPE_11__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  intptr_t int32_t ;
struct TYPE_13__ {int /*<<< orphan*/ ** p; TYPE_2__** ct; } ;
struct TYPE_12__ {int /*<<< orphan*/  info; } ;
typedef  scalar_t__ MMS ;
typedef  int /*<<< orphan*/  GCcdata ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_2__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  scalar_t__ CTSize ;
typedef  TYPE_3__ CDArith ;

/* Variables and functions */
 int /*<<< orphan*/  CCF_IGNQUAL ; 
 int CTALIGN_PTR ; 
 int /*<<< orphan*/  CTID_INT_PSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ CTSIZE_INVALID ; 
 int /*<<< orphan*/  CTSIZE_PTR ; 
 int /*<<< orphan*/  CT_PTR ; 
 scalar_t__ MM_add ; 
 scalar_t__ MM_eq ; 
 scalar_t__ MM_le ; 
 scalar_t__ MM_lt ; 
 scalar_t__ MM_sub ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,intptr_t) ; 

__attribute__((used)) static int FUNC17(lua_State *L, CTState *cts, CDArith *ca, MMS mm)
{
  CType *ctp = ca->ct[0];
  uint8_t *pp = ca->p[0];
  ptrdiff_t idx;
  CTSize sz;
  CTypeID id;
  GCcdata *cd;
  if (FUNC5(ctp->info) || FUNC6(ctp->info)) {
    if ((mm == MM_sub || mm == MM_eq || mm == MM_lt || mm == MM_le) &&
	(FUNC5(ca->ct[1]->info) || FUNC6(ca->ct[1]->info))) {
      uint8_t *pp2 = ca->p[1];
      if (mm == MM_eq) {  /* Pointer equality. Incompatible pointers are ok. */
	FUNC14(L->top-1, (pp == pp2));
	return 1;
      }
      if (!FUNC7(cts, ctp, ca->ct[1], CCF_IGNQUAL))
	return 0;
      if (mm == MM_sub) {  /* Pointer difference. */
	intptr_t diff;
	sz = FUNC11(cts, FUNC2(ctp->info));  /* Element size. */
	if (sz == 0 || sz == CTSIZE_INVALID)
	  return 0;
	diff = ((intptr_t)pp - (intptr_t)pp2) / (int32_t)sz;
	/* All valid pointer differences on x64 are in (-2^47, +2^47),
	** which fits into a double without loss of precision.
	*/
	FUNC16(L->top-1, (int32_t)diff);
	return 1;
      } else if (mm == MM_lt) {  /* Pointer comparison (unsigned). */
	FUNC14(L->top-1, ((uintptr_t)pp < (uintptr_t)pp2));
	return 1;
      } else {
	FUNC13(mm == MM_le);
	FUNC14(L->top-1, ((uintptr_t)pp <= (uintptr_t)pp2));
	return 1;
      }
    }
    if (!((mm == MM_add || mm == MM_sub) && FUNC4(ca->ct[1]->info)))
      return 0;
    FUNC8(cts, FUNC3(cts, CTID_INT_PSZ), ca->ct[1],
		   (uint8_t *)&idx, ca->p[1], 0);
    if (mm == MM_sub) idx = -idx;
  } else if (mm == MM_add && FUNC4(ctp->info) &&
      (FUNC5(ca->ct[1]->info) || FUNC6(ca->ct[1]->info))) {
    /* Swap pointer and index. */
    ctp = ca->ct[1]; pp = ca->p[1];
    FUNC8(cts, FUNC3(cts, CTID_INT_PSZ), ca->ct[0],
		   (uint8_t *)&idx, ca->p[0], 0);
  } else {
    return 0;
  }
  sz = FUNC11(cts, FUNC2(ctp->info));  /* Element size. */
  if (sz == CTSIZE_INVALID)
    return 0;
  pp += idx*(int32_t)sz;  /* Compute pointer + index. */
  id = FUNC10(cts, FUNC0(CT_PTR, CTALIGN_PTR|FUNC2(ctp->info)),
		       CTSIZE_PTR);
  cd = FUNC9(cts, id, CTSIZE_PTR);
  *(uint8_t **)FUNC1(cd) = pp;
  FUNC15(L, L->top-1, cd);
  FUNC12(L);
  return 1;
}