#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  void* lua_CFunction ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TValue *FUNC3(lua_State *L, lua_CFunction dummy, void *ud)
{
  FUNC0(dummy);
  FUNC0(ud);
  FUNC1(L);
  FUNC2(L);
  /* Frame pop omitted. */
  return NULL;
}