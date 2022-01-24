#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  weak; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_12__ {int marked; int sizearray; int /*<<< orphan*/ * array; int /*<<< orphan*/  gclist; scalar_t__ metatable; } ;
typedef  TYPE_2__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int KEYWEAK ; 
 int KEYWEAKBIT ; 
 scalar_t__ LUA_TDEADKEY ; 
 int /*<<< orphan*/  TM_MODE ; 
 int VALUEWEAK ; 
 int VALUEWEAKBIT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16 (global_State *g, Table *h) {
  int i;
  int weakkey = 0;
  int weakvalue = 0;
  const TValue *mode;
  if (h->metatable)
    FUNC6(g, h->metatable);
  mode = FUNC1(g, h->metatable, TM_MODE);
  if (mode && FUNC14(mode)) {  /* is there a weak mode? */
    weakkey = (FUNC11(FUNC12(mode), 'k') != NULL);
    weakvalue = (FUNC11(FUNC12(mode), 'v') != NULL);
    if (weakkey || weakvalue) {  /* is really weak? */
      h->marked &= ~(KEYWEAK | VALUEWEAK);  /* clear bits */
      h->marked |= FUNC0((weakkey << KEYWEAKBIT) |
                             (weakvalue << VALUEWEAKBIT));
      h->gclist = g->weak;  /* must be cleared after GC, ... */
      g->weak = FUNC8(h);  /* ... so put in the appropriate list */
    }
  }
  if (weakkey && weakvalue) return 1;
  if (!weakvalue) {
    i = h->sizearray;
    while (i--)
      FUNC7(g, &h->array[i]);
  }
  i = FUNC10(h);
  while (i--) {
    Node *n = FUNC3(h, i);
    FUNC5(FUNC15(FUNC2(n)) != LUA_TDEADKEY || FUNC13(FUNC4(n)));
    if (FUNC13(FUNC4(n)))
      FUNC9(n);  /* remove empty entries */
    else {
      FUNC5(!FUNC13(FUNC2(n)));
      if (!weakkey) FUNC7(g, FUNC2(n));
      if (!weakvalue) FUNC7(g, FUNC4(n));
    }
  }
  return weakkey || weakvalue;
}