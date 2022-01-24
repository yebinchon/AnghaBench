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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static size_t
FUNC3(lua_State *L, int index) {
	size_t tlen = 0;
	int i;
	for (i=1;FUNC1(L, index, i) != LUA_TNIL; ++i) {
		size_t len;
		FUNC0(L, -1, &len);
		tlen += len;
		FUNC2(L,1);
	}
	FUNC2(L,1);
	return tlen;
}