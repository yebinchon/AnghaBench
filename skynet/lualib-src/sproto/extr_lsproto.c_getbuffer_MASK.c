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
 int LUA_TLIGHTUSERDATA ; 
 int LUA_TSTRING ; 
 int LUA_TUSERDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const void *
FUNC5(lua_State *L, int index, size_t *sz) {
	const void * buffer = NULL;
	int t = FUNC4(L, index);
	if (t == LUA_TSTRING) {
		buffer = FUNC2(L, index, sz);
	} else {
		if (t != LUA_TUSERDATA && t != LUA_TLIGHTUSERDATA) {
			FUNC0(L, index, "Need a string or userdata");
			return NULL;
		}
		buffer = FUNC3(L, index);
		*sz = FUNC1(L, index+1);
	}
	return buffer;
}