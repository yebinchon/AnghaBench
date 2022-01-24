#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ top; scalar_t__ base; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_RDRSTR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char const* FUNC5 (TYPE_1__*,int,size_t*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static const char *FUNC9(lua_State *L, void *ud, size_t *size)
{
  FUNC0(ud);
  FUNC3(L, 2, "too many nested functions");
  FUNC1(L, L->top++, L->base);
  FUNC4(L, 0, 1);  /* Call user-supplied function. */
  L->top--;
  if (FUNC6(L->top)) {
    *size = 0;
    return NULL;
  } else if (FUNC8(L->top) || FUNC7(L->top)) {
    FUNC1(L, L->base+4, L->top);  /* Anchor string in reserved stack slot. */
    return FUNC5(L, 5, size);
  } else {
    FUNC2(L, LJ_ERR_RDRSTR);
    return NULL;
  }
}