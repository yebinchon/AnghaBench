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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC6(lua_State *L, const uint8_t * buf, int sz) {
	if (sz < 9) {
		return FUNC0(L, "Invalid cluster message (size=%d)", sz);
	}
	uint32_t address = FUNC5(buf+1);
	uint32_t session = FUNC5(buf+5);
	FUNC2(L, address);
	FUNC2(L, session);

	FUNC4(L, (const char *)buf+9, sz-9);
	if (session == 0) {
		FUNC3(L);
		FUNC1(L,1);	// is_push, no reponse
		return 6;
	}

	return 4;
}