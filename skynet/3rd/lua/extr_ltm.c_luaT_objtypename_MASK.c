#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_4__ {int /*<<< orphan*/ * metatable; } ;
struct TYPE_3__ {int /*<<< orphan*/ * metatable; } ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 char const* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/  const*) ; 

const char *FUNC11 (lua_State *L, const TValue *o) {
  Table *mt;
  if ((FUNC7(o) && (mt = FUNC1(o)->metatable) != NULL) ||
      (FUNC5(o) && (mt = FUNC10(o)->metatable) != NULL)) {
    const TValue *name = FUNC2(mt, FUNC3(L, "__name"));
    if (FUNC6(name))  /* is '__name' a string? */
      return FUNC0(FUNC4(name));  /* use it as type name */
  }
  return FUNC9(FUNC8(o));  /* else use standard type name */
}