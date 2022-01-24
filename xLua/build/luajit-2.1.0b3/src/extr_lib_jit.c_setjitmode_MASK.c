#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ base; scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_NOJIT ; 
 int LUAJIT_MODE_ALLFUNC ; 
 int LUAJIT_MODE_ALLSUBFUNC ; 
 int LUAJIT_MODE_ENGINE ; 
 int LUAJIT_MODE_FUNC ; 
 int LUAJIT_MODE_MASK ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(lua_State *L, int mode)
{
  int idx = 0;
  if (L->base == L->top || FUNC6(L->base)) {  /* jit.on/off/flush([nil]) */
    mode |= LUAJIT_MODE_ENGINE;
  } else {
    /* jit.on/off/flush(func|proto, nil|true|false) */
    if (FUNC5(L->base) || FUNC7(L->base))
      idx = 1;
    else if (!FUNC8(L->base))  /* jit.on/off/flush(true, nil|true|false) */
      goto err;
    if (L->base+1 < L->top && FUNC4(L->base+1))
      mode |= FUNC0(L->base+1) ? LUAJIT_MODE_ALLFUNC : LUAJIT_MODE_ALLSUBFUNC;
    else
      mode |= LUAJIT_MODE_FUNC;
  }
  if (FUNC3(L, idx, mode) != 1) {
    if ((mode & LUAJIT_MODE_MASK) == LUAJIT_MODE_ENGINE)
      FUNC2(L, LJ_ERR_NOJIT);
  err:
    FUNC1(L, 1, LUA_TFUNCTION);
  }
  return 0;
}