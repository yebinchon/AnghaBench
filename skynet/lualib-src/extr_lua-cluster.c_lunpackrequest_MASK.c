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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TLIGHTUSERDATA ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static int
FUNC11(lua_State *L) {
	int sz;
	const char *msg;
	if (FUNC4(L, 1) == LUA_TLIGHTUSERDATA) {
		msg = (const char *)FUNC3(L, 1);
		sz = FUNC0(L, 2);
	} else {
		size_t ssz;
		msg = FUNC1(L,1,&ssz);
		sz = (int)ssz;
	}
	switch (msg[0]) {
	case 0:
		return FUNC8(L, (const uint8_t *)msg, sz);
	case 1:
		return FUNC5(L, (const uint8_t *)msg, sz, 0);	// request
	case '\x41':
		return FUNC5(L, (const uint8_t *)msg, sz, 1);	// push
	case 2:
	case 3:
		return FUNC6(L, (const uint8_t *)msg, sz);
	case 4:
		return FUNC10(L, msg, sz);
	case '\x80':
		return FUNC9(L, (const uint8_t *)msg, sz);
	case '\x81':
		return FUNC7(L, (const uint8_t *)msg, sz, 0 );	// request
	case '\xc1':
		return FUNC7(L, (const uint8_t *)msg, sz, 1 );	// push
	default:
		return FUNC2(L, "Invalid req package type %d", msg[0]);
	}
}