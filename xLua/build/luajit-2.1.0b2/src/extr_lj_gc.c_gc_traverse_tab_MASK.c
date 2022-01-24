#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_16__ {int /*<<< orphan*/  weak; } ;
struct TYPE_17__ {TYPE_1__ gc; } ;
typedef  TYPE_2__ global_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_19__ {int marked; scalar_t__ asize; scalar_t__ hmask; int /*<<< orphan*/  node; int /*<<< orphan*/  gclist; int /*<<< orphan*/  metatable; } ;
struct TYPE_18__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  TYPE_3__ Node ;
typedef  scalar_t__ MSize ;
typedef  TYPE_4__ GCtab ;

/* Variables and functions */
 int LJ_GC_WEAK ; 
 int LJ_GC_WEAKKEY ; 
 int LJ_GC_WEAKVAL ; 
 int /*<<< orphan*/  MM_mode ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(global_State *g, GCtab *t)
{
  int weak = 0;
  cTValue *mode;
  GCtab *mt = FUNC10(t->metatable);
  if (mt)
    FUNC1(g, mt);
  mode = FUNC3(g, mt, MM_mode);
  if (mode && FUNC12(mode)) {  /* Valid __mode field? */
    const char *modestr = FUNC9(mode);
    int c;
    while ((c = *modestr++)) {
      if (c == 'k') weak |= LJ_GC_WEAKKEY;
      else if (c == 'v') weak |= LJ_GC_WEAKVAL;
      else if (c == 'K') weak = (int)(~0u & ~LJ_GC_WEAKVAL);
    }
    if (weak > 0) {  /* Weak tables are cleared in the atomic phase. */
      t->marked = (uint8_t)((t->marked & ~LJ_GC_WEAK) | weak);
      FUNC8(t->gclist, g->gc.weak);
      FUNC7(g->gc.weak, FUNC6(t));
    }
  }
  if (weak == LJ_GC_WEAK)  /* Nothing to mark if both keys/values are weak. */
    return 1;
  if (!(weak & LJ_GC_WEAKVAL)) {  /* Mark array part. */
    MSize i, asize = t->asize;
    for (i = 0; i < asize; i++)
      FUNC2(g, FUNC0(t, i));
  }
  if (t->hmask > 0) {  /* Mark hash part. */
    Node *node = FUNC5(t->node);
    MSize i, hmask = t->hmask;
    for (i = 0; i <= hmask; i++) {
      Node *n = &node[i];
      if (!FUNC11(&n->val)) {  /* Mark non-empty slot. */
	FUNC4(!FUNC11(&n->key));
	if (!(weak & LJ_GC_WEAKKEY)) FUNC2(g, &n->key);
	if (!(weak & LJ_GC_WEAKVAL)) FUNC2(g, &n->val);
      }
    }
  }
  return weak;
}