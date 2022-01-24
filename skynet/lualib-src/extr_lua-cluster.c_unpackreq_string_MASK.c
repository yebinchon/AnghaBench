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
typedef  size_t uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC6 (size_t const*) ; 

__attribute__((used)) static int
FUNC7(lua_State *L, const uint8_t * buf, int sz) {
	if (sz < 2) {
		return FUNC0(L, "Invalid cluster message (size=%d)", sz);
	}
	size_t namesz = buf[1];
	if (sz < namesz + 6) {
		return FUNC0(L, "Invalid cluster message (size=%d)", sz);
	}
	FUNC3(L, (const char *)buf+2, namesz);
	uint32_t session = FUNC6(buf + namesz + 2);
	FUNC2(L, (uint32_t)session);
	FUNC5(L, (const char *)buf+2+namesz+4, sz - namesz - 6);
	if (session == 0) {
		FUNC4(L);
		FUNC1(L,1);	// is_push, no reponse
		return 6;
	}

	return 4;
}