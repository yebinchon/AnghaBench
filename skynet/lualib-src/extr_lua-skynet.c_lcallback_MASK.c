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
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_RIDX_MAINTHREAD ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  _cb ; 
 int /*<<< orphan*/  forward_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct skynet_context* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct skynet_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(lua_State *L) {
	struct skynet_context * context = FUNC6(L, FUNC7(1));
	int forward = FUNC4(L, 2);
	FUNC0(L,1,LUA_TFUNCTION);
	FUNC3(L,1);
	FUNC2(L, LUA_REGISTRYINDEX, _cb);

	FUNC1(L, LUA_REGISTRYINDEX, LUA_RIDX_MAINTHREAD);
	lua_State *gL = FUNC5(L,-1);

	if (forward) {
		FUNC8(context, gL, forward_cb);
	} else {
		FUNC8(context, gL, _cb);
	}

	return 0;
}