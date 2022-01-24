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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (size_t const*) ; 

__attribute__((used)) static int
FUNC6(lua_State *L, const uint8_t * buf, int sz, int is_push) {
	if (sz < 2) {
		return FUNC0(L, "Invalid cluster message (size=%d)", sz);
	}
	size_t namesz = buf[1];
	if (sz < namesz + 10) {
		return FUNC0(L, "Invalid cluster message (size=%d)", sz);
	}
	FUNC3(L, (const char *)buf+2, namesz);
	uint32_t session = FUNC5(buf + namesz + 2);
	uint32_t size = FUNC5(buf + namesz + 6);
	FUNC2(L, session);
	FUNC4(L);
	FUNC2(L, size);
	FUNC1(L, 1);	// padding multipart
	FUNC1(L, is_push);

	return 6;
}