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
typedef  int /*<<< orphan*/  uint32_t ;
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct skynet_context* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct skynet_context*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	struct skynet_context * context = FUNC3(L, FUNC4(1));
	uint32_t handle = (uint32_t)FUNC0(L,1);
	int harbor = 0;
	int remote = FUNC5(context, handle, &harbor);
	FUNC2(L,harbor);
	FUNC1(L, remote);

	return 2;
}