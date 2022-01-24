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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int const*) ; 

__attribute__((used)) static int
FUNC5(lua_State *L, const uint8_t * buf, int sz) {
	if (sz < 5) {
		return FUNC0(L, "Invalid cluster multi part message");
	}
	int padding = (buf[0] == 2);
	uint32_t session = FUNC4(buf+1);
	FUNC1(L, 0);	// no address
	FUNC2(L, session);
	FUNC3(L, (const char *)buf+5, sz-5);
	FUNC1(L, padding);

	return 5;
}