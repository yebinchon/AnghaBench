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
struct TYPE_8__ {scalar_t__ status; scalar_t__ top; scalar_t__ base; int /*<<< orphan*/ * cframe; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  MSize ;
typedef  int /*<<< orphan*/  ErrMsg ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FFH_RETRY ; 
 int /*<<< orphan*/  LJ_ERR_CODEAD ; 
 int /*<<< orphan*/  LJ_ERR_CORUN ; 
 int LJ_FR2 ; 
 scalar_t__ LUA_YIELD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(lua_State *L, lua_State *co, int wrap)
{
  if (co->cframe != NULL || co->status > LUA_YIELD ||
      (co->status == 0 && co->top == co->base)) {
    ErrMsg em = co->cframe ? LJ_ERR_CORUN : LJ_ERR_CODEAD;
    if (wrap) FUNC1(L, em);
    FUNC4(L->base-1-LJ_FR2, 0);
    FUNC5(L, L->base-LJ_FR2, FUNC2(L, em));
    return FUNC0(2);
  }
  FUNC3(co, (MSize)(L->top - L->base));
  return FFH_RETRY;
}