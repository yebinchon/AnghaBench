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
 int /*<<< orphan*/  FUNC0 (int,char const) ; 
 int SMALL_CHUNK ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	size_t sz = 0;
	const char * text = FUNC1(L, 1, &sz);
	if (sz & 1) {
		return FUNC2(L, "Invalid hex text size %d", (int)sz);
	}
	char tmp[SMALL_CHUNK];
	char *buffer = tmp;
	if (sz > SMALL_CHUNK*2) {
		buffer = FUNC3(L, sz / 2);
	}
	int i;
	for (i=0;i<sz;i+=2) {
		uint8_t hi,low;
		FUNC0(hi, text[i]);
		FUNC0(low, text[i+1]);
		if (hi > 16 || low > 16) {
			return FUNC2(L, "Invalid hex text", text);
		}
		buffer[i/2] = hi<<4 | low;
	}
	FUNC4(L, buffer, i/2);
	return 1;
}