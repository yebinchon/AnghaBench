#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_19__ ;
typedef  struct TYPE_22__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_24__ {scalar_t__ nocdatafin; int /*<<< orphan*/  root; int /*<<< orphan*/  mmudata; } ;
struct TYPE_26__ {TYPE_1__ gc; int /*<<< orphan*/  jit_base; } ;
typedef  TYPE_3__ global_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_28__ {int /*<<< orphan*/  nextgc; } ;
struct TYPE_25__ {int /*<<< orphan*/  nextgc; int /*<<< orphan*/  marked; int /*<<< orphan*/  gct; } ;
struct TYPE_27__ {TYPE_2__ gch; } ;
struct TYPE_23__ {int /*<<< orphan*/  finalizer; } ;
struct TYPE_22__ {int /*<<< orphan*/  metatable; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_4__ GCobj ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LJ_GC_CDATA_FIN ; 
 int /*<<< orphan*/  LJ_TCDATA ; 
 int /*<<< orphan*/  MM_gc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_19__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_12__* FUNC6 (TYPE_4__*) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21(lua_State *L)
{
  global_State *g = FUNC0(L);
  GCobj *o = FUNC4(FUNC7(g->gc.mmudata));
  cTValue *mo;
  FUNC10(FUNC20(g->jit_base) == NULL);  /* Must not be called on trace. */
  /* Unchain from list of userdata to be finalized. */
  if (o == FUNC7(g->gc.mmudata))
    FUNC15(g->gc.mmudata);
  else
    FUNC16(FUNC7(g->gc.mmudata)->gch.nextgc, o->gch.nextgc);
#if LJ_HASFFI
  if (o->gch.gct == ~LJ_TCDATA) {
    TValue tmp, *tv;
    /* Add cdata back to the GC list and make it white. */
    setgcrefr(o->gch.nextgc, g->gc.root);
    setgcref(g->gc.root, o);
    makewhite(g, o);
    o->gch.marked &= (uint8_t)~LJ_GC_CDATA_FIN;
    /* Resolve finalizer. */
    setcdataV(L, &tmp, gco2cd(o));
    tv = lj_tab_set(L, ctype_ctsG(g)->finalizer, &tmp);
    if (!tvisnil(tv)) {
      g->gc.nocdatafin = 0;
      copyTV(L, &tmp, tv);
      setnilV(tv);  /* Clear entry in finalizer table. */
      gc_call_finalizer(g, L, &tmp, o);
    }
    return;
  }
#endif
  /* Add userdata back to the main userdata list and make it white. */
  FUNC16(o->gch.nextgc, FUNC11(g)->nextgc);
  FUNC14(FUNC11(g)->nextgc, o);
  FUNC12(g, o);
  /* Resolve the __gc metamethod. */
  mo = FUNC8(g, FUNC18(FUNC6(o)->metatable), MM_gc);
  if (mo)
    FUNC3(g, L, mo, o);
}