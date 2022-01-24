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
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	size_t len;
	const char * ptr = FUNC5(L, &len, 1);
	if (len >= 0x10000) {
		return FUNC0(L, "Invalid size (too long) of data : %d", (int)len);
	}

	uint8_t * buffer = FUNC4(len + 2);
	FUNC6(buffer, len);
	FUNC3(buffer+2, ptr, len);

	FUNC2(L, buffer);
	FUNC1(L, len + 2);

	return 2;
}