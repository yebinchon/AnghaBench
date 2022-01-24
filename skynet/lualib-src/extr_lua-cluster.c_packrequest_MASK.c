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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int INT32_MAX ; 
 int LUA_TNUMBER ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,void*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,void*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static int
FUNC10(lua_State *L, int is_push) {
	void *msg = FUNC4(L,3);
	if (msg == NULL) {
		return FUNC1(L, "Invalid request message");
	}
	uint32_t sz = (uint32_t)FUNC0(L,4);
	int session = FUNC0(L,2);
	if (session <= 0) {
		FUNC9(msg);
		return FUNC1(L, "Invalid request session %d", session);
	}
	int addr_type = FUNC5(L,1);
	int multipak;
	if (addr_type == LUA_TNUMBER) {
		multipak = FUNC7(L, session, msg, sz, is_push);
	} else {
		multipak = FUNC8(L, session, msg, sz, is_push);
	}
	uint32_t new_session = (uint32_t)session + 1;
	if (new_session > INT32_MAX) {
		new_session = 1;
	}
	FUNC3(L, new_session);
	if (multipak) {
		FUNC2(L, multipak, 0);
		FUNC6(L, session, msg, sz);
		FUNC9(msg);
		return 3;
	} else {
		FUNC9(msg);
		return 2;
	}
}