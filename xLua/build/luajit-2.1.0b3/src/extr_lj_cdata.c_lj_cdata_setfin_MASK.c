#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {TYPE_1__* finalizer; } ;
struct TYPE_9__ {int /*<<< orphan*/  marked; } ;
struct TYPE_8__ {int /*<<< orphan*/  metatable; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ GCtab ;
typedef  int /*<<< orphan*/  GCobj ;
typedef  TYPE_2__ GCcdata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LJ_GC_CDATA_FIN ; 
 int /*<<< orphan*/  LJ_TNIL ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(lua_State *L, GCcdata *cd, GCobj *obj, uint32_t it)
{
  GCtab *t = FUNC1(FUNC0(L))->finalizer;
  if (FUNC2(t->metatable)) {
    /* Add cdata to finalizer table, if still enabled. */
    TValue *tv, tmp;
    FUNC5(L, &tmp, cd);
    FUNC3(L, t);
    tv = FUNC4(L, t, &tmp);
    if (it == LJ_TNIL) {
      FUNC7(tv);
      cd->marked &= ~LJ_GC_CDATA_FIN;
    } else {
      FUNC6(L, tv, obj, it);
      cd->marked |= LJ_GC_CDATA_FIN;
    }
  }
}