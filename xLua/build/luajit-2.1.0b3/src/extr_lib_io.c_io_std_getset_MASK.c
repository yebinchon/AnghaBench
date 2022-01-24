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
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ptrdiff_t ;
struct TYPE_9__ {scalar_t__ base; scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_10__ {int /*<<< orphan*/ * gcroot; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(lua_State *L, ptrdiff_t id, const char *mode)
{
  if (L->base < L->top && !FUNC7(L->base)) {
    if (FUNC8(L->base)) {
      FUNC4(L);
      L->top = L->base+1;
    } else {
      FUNC3(L, mode);
    }
    /* NOBARRIER: The standard I/O handles are GC roots. */
    FUNC5(FUNC0(L)->gcroot[id], FUNC2(L->top-1));
  } else {
    FUNC6(L, L->top++, FUNC1(L, id));
  }
  return 1;
}