#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  GCstr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MM_tostring ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GCstr *FUNC9(lua_State *L, int arg, int retry)
{
  TValue *o = L->base+arg-1;
  cTValue *mo;
  FUNC4(o < L->top);  /* Caller already checks for existence. */
  if (FUNC0(FUNC8(o)))
    return FUNC6(o);
  if (retry != 2 && !FUNC7(mo = FUNC2(L, o, MM_tostring))) {
    FUNC1(L, L->top++, mo);
    FUNC1(L, L->top++, o);
    FUNC5(L, 1, 1);
    FUNC1(L, L->base+arg-1, --L->top);
    return NULL;  /* Buffer may be overwritten, retry. */
  }
  return FUNC3(L, o);
}