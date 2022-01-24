#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_25__ {void (* func ) () ;scalar_t__ spadj; } ;
struct TYPE_21__ {unsigned int slot; } ;
struct TYPE_24__ {scalar_t__ tab; int /*<<< orphan*/  miscmap; TYPE_1__ cb; } ;
struct TYPE_23__ {int /*<<< orphan*/  info; int /*<<< orphan*/  size; } ;
struct TYPE_22__ {int /*<<< orphan*/  ctypeid; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ GCcdata ;
typedef  TYPE_3__ CType ;
typedef  TYPE_4__ CTState ;
typedef  int /*<<< orphan*/  CTSize ;
typedef  TYPE_5__ CCallState ;

/* Variables and functions */
 int /*<<< orphan*/  CCONV ; 
 scalar_t__ CTCC_CDECL ; 
 int /*<<< orphan*/  CTCC_STDCALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTSIZE_PTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,TYPE_5__*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,void*) ; 

int FUNC18(lua_State *L, GCcdata *cd)
{
  CTState *cts = FUNC7(L);
  CType *ct = FUNC10(cts, cd->ctypeid);
  CTSize sz = CTSIZE_PTR;
  if (FUNC9(ct->info)) {
    sz = ct->size;
    ct = FUNC11(cts, ct);
  }
  if (FUNC8(ct->info)) {
    CCallState cc;
    int gcsteps, ret;
    cc.func = (void (*)(void))FUNC4(FUNC5(cd), sz);
    gcsteps = FUNC3(L, cts, ct, &cc);
    ct = (CType *)((intptr_t)ct-(intptr_t)cts->tab);
    cts->cb.slot = ~0u;
    FUNC15(&cc);
    if (cts->cb.slot != ~0u) {  /* Blacklist function that called a callback. */
      TValue tv;
      FUNC17(&tv, (void *)cc.func);
      FUNC16(FUNC13(L, cts->miscmap, &tv), 1);
    }
    ct = (CType *)((intptr_t)ct+(intptr_t)cts->tab);  /* May be reallocated. */
    gcsteps += FUNC2(L, cts, ct, &cc, &ret);
#if LJ_TARGET_X86 && LJ_ABI_WIN
    /* Automatically detect __stdcall and fix up C function declaration. */
    if (cc.spadj && ctype_cconv(ct->info) == CTCC_CDECL) {
      CTF_INSERT(ct->info, CCONV, CTCC_STDCALL);
      lj_trace_abort(G(L));
    }
#endif
    while (gcsteps-- > 0)
      FUNC12(L);
    return ret;
  }
  return -1;  /* Not a function. */
}