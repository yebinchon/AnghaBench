#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_15__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_16__ {int info; int size; } ;
struct TYPE_14__ {int /*<<< orphan*/  ctypeid; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_2__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CTF_BOOL ; 
 int CTF_FP ; 
 int CTF_UNSIGNED ; 
 int /*<<< orphan*/  CTID_INT64 ; 
 int /*<<< orphan*/  CTID_UINT64 ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int CTMASK_NUM ; 
 int /*<<< orphan*/  CT_NUM ; 
 scalar_t__ LJ_DUALNUM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LUA_TNUMBER ; 
 TYPE_12__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_12__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 

uint64_t FUNC24(lua_State *L, int narg, CTypeID *id)
{
  TValue *o = L->base + narg-1;
  if (o >= L->top) {
  err:
    FUNC14(L, narg, LUA_TNUMBER);
  } else if (FUNC2(FUNC22(o))) {
    /* Handled below. */
  } else if (FUNC20(o)) {
    CTState *cts = FUNC7(L);
    uint8_t *sp = (uint8_t *)FUNC4(FUNC3(o));
    CTypeID sid = FUNC3(o)->ctypeid;
    CType *s = FUNC8(cts, sid);
    uint64_t x;
    if (FUNC10(s->info)) {
      sp = *(void **)sp;
      sid = FUNC6(s->info);
    }
    s = FUNC11(cts, sid);
    if (FUNC9(s->info)) s = FUNC5(cts, s);
    if ((s->info & (CTMASK_NUM|CTF_BOOL|CTF_FP|CTF_UNSIGNED)) ==
	FUNC1(CT_NUM, CTF_UNSIGNED) && s->size == 8)
      *id = CTID_UINT64;  /* Use uint64_t, since it has the highest rank. */
    else if (!*id)
      *id = CTID_INT64;  /* Use int64_t, unless already set. */
    FUNC13(cts, FUNC8(cts, *id), s,
		   (uint8_t *)&x, sp, FUNC0(narg));
    return x;
  } else if (!(FUNC23(o) && FUNC16(FUNC19(o), o))) {
    goto err;
  }
  if (FUNC2(FUNC21(o))) {
    return (uint32_t)FUNC12(o);
  } else {
    int32_t i = FUNC15(FUNC17(o));
    if (LJ_DUALNUM) FUNC18(o, i);
    return (uint32_t)i;
  }
}