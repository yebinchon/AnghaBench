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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int TEMP_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	size_t sz;
	const char * tag = FUNC1(L, 1, &sz);
	if (sz > 0x8000) {
		return FUNC2(L, "trace tag is too long : %d", (int) sz);
	}
	uint8_t buf[TEMP_LENGTH];
	buf[2] = 4;
	FUNC0(L, buf, sz+1);
	FUNC4(buf+3, tag, sz);
	FUNC3(L, (const char *)buf, sz+3);
	return 1;
}