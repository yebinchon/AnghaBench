#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_49__   TYPE_9__ ;
typedef  struct TYPE_48__   TYPE_8__ ;
typedef  struct TYPE_47__   TYPE_7__ ;
typedef  struct TYPE_46__   TYPE_6__ ;
typedef  struct TYPE_45__   TYPE_5__ ;
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;
typedef  struct TYPE_40__   TYPE_11__ ;
typedef  struct TYPE_39__   TYPE_10__ ;

/* Type definitions */
struct TYPE_45__ {int stacksize; int /*<<< orphan*/  gclist; } ;
typedef  TYPE_5__ lua_State ;
struct TYPE_44__ {int /*<<< orphan*/  grayagain; int /*<<< orphan*/  gray; } ;
struct TYPE_46__ {TYPE_4__ gc; } ;
typedef  TYPE_6__ global_State ;
struct TYPE_49__ {size_t sizept; } ;
struct TYPE_48__ {int asize; int hmask; } ;
struct TYPE_47__ {int nins; int nk; int nsnap; int nsnapmap; } ;
struct TYPE_43__ {scalar_t__ nupvalues; } ;
struct TYPE_42__ {scalar_t__ nupvalues; } ;
struct TYPE_41__ {int gct; int /*<<< orphan*/  gclist; } ;
struct TYPE_40__ {TYPE_3__ c; TYPE_2__ l; } ;
struct TYPE_39__ {TYPE_1__ gch; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  SnapShot ;
typedef  int /*<<< orphan*/  SnapEntry ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MSize ;
typedef  int /*<<< orphan*/  IRIns ;
typedef  TYPE_7__ GCtrace ;
typedef  TYPE_8__ GCtab ;
typedef  TYPE_9__ GCproto ;
typedef  TYPE_10__ GCobj ;
typedef  TYPE_11__ GCfunc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int LJ_TFUNC ; 
 int LJ_TPROTO ; 
 int LJ_TTAB ; 
 int LJ_TTHREAD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_9__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_7__*) ; 
 TYPE_11__* FUNC7 (TYPE_10__*) ; 
 TYPE_9__* FUNC8 (TYPE_10__*) ; 
 TYPE_8__* FUNC9 (TYPE_10__*) ; 
 TYPE_5__* FUNC10 (TYPE_10__*) ; 
 TYPE_7__* FUNC11 (TYPE_10__*) ; 
 TYPE_10__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_10__*) ; 
 scalar_t__ FUNC15 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC19 (int /*<<< orphan*/ ) ; 
 size_t FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC21(global_State *g)
{
  GCobj *o = FUNC12(g->gc.gray);
  int gct = o->gch.gct;
  FUNC16(FUNC14(o));
  FUNC13(o);
  FUNC18(g->gc.gray, o->gch.gclist);  /* Remove from gray list. */
  if (FUNC0(gct == ~LJ_TTAB)) {
    GCtab *t = FUNC9(o);
    if (FUNC4(g, t) > 0)
      FUNC1(o);  /* Keep weak tables gray. */
    return sizeof(GCtab) + sizeof(TValue) * t->asize +
			   (t->hmask ? sizeof(Node) * (t->hmask + 1) : 0);
  } else if (FUNC0(gct == ~LJ_TFUNC)) {
    GCfunc *fn = FUNC7(o);
    FUNC2(g, fn);
    return FUNC15(fn) ? FUNC20((MSize)fn->l.nupvalues) :
			   FUNC19((MSize)fn->c.nupvalues);
  } else if (FUNC0(gct == ~LJ_TPROTO)) {
    GCproto *pt = FUNC8(o);
    FUNC3(g, pt);
    return pt->sizept;
  } else if (FUNC0(gct == ~LJ_TTHREAD)) {
    lua_State *th = FUNC10(o);
    FUNC18(th->gclist, g->gc.grayagain);
    FUNC17(g->gc.grayagain, o);
    FUNC1(o);  /* Threads are never black. */
    FUNC5(g, th);
    return sizeof(lua_State) + sizeof(TValue) * th->stacksize;
  } else {
#if LJ_HASJIT
    GCtrace *T = gco2trace(o);
    gc_traverse_trace(g, T);
    return ((sizeof(GCtrace)+7)&~7) + (T->nins-T->nk)*sizeof(IRIns) +
	   T->nsnap*sizeof(SnapShot) + T->nsnapmap*sizeof(SnapEntry);
#else
    FUNC16(0);
    return 0;
#endif
  }
}