#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  scalar_t__ int32_t ;
struct TYPE_23__ {int /*<<< orphan*/  L; TYPE_1__* g; } ;
struct TYPE_22__ {int info; int size; } ;
struct TYPE_21__ {int /*<<< orphan*/  n; } ;
struct TYPE_20__ {TYPE_2__ tmptv2; } ;
typedef  TYPE_2__ TValue ;
typedef  int /*<<< orphan*/  GCcdata ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_3__ CType ;
typedef  TYPE_4__ CTState ;
typedef  int CTSize ;
typedef  int CTInfo ;

/* Variables and functions */
 int CTF_UNSIGNED ; 
 int /*<<< orphan*/  CTID_DOUBLE ; 
 int /*<<< orphan*/  CTID_INT32 ; 
 int CTSIZE_INVALID ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_4__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_2__*) ; 

int FUNC18(CTState *cts, CType *s, CTypeID sid,
		   TValue *o, uint8_t *sp)
{
  CTInfo sinfo = s->info;
  if (FUNC4(sinfo)) {
    if (!FUNC2(sinfo)) {
      if (FUNC3(sinfo) && s->size > 4) goto copyval;
      if (LJ_DUALNUM && FUNC3(sinfo)) {
	int32_t i;
	FUNC8(cts, FUNC1(cts, CTID_INT32), s,
		       (uint8_t *)&i, sp, 0);
	if ((sinfo & CTF_UNSIGNED) && i < 0)
	  FUNC16(o, (lua_Number)(uint32_t)i);
	else
	  FUNC15(o, i);
      } else {
	FUNC8(cts, FUNC1(cts, CTID_DOUBLE), s,
		       (uint8_t *)&o->n, sp, 0);
	/* Numbers are NOT canonicalized here! Beware of uninitialized data. */
	FUNC11(FUNC17(o));
      }
    } else {
      uint32_t b = s->size == 1 ? (*sp != 0) : (*(int *)sp != 0);
      FUNC13(o, b);
      FUNC13(&cts->g->tmptv2, b);  /* Remember for trace recorder. */
    }
    return 0;
  } else if (FUNC5(sinfo) || FUNC6(sinfo)) {
    /* Create reference. */
    FUNC14(cts->L, o, FUNC10(cts, sp, sid));
    return 1;  /* Need GC step. */
  } else {
    GCcdata *cd;
    CTSize sz;
  copyval:  /* Copy value. */
    sz = s->size;
    FUNC11(sz != CTSIZE_INVALID);
    /* Attributes are stripped, qualifiers are kept (but mostly ignored). */
    cd = FUNC9(cts, FUNC7(cts, s), sz);
    FUNC14(cts->L, o, cd);
    FUNC12(FUNC0(cd), sp, sz);
    return 1;  /* Need GC step. */
  }
}