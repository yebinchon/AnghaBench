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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,int) ; 
 void* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(lua_State *L, const char * buffer, int sz) {
	void * ptr = FUNC3(sz);
	FUNC2(ptr, buffer, sz);
	FUNC1(L, ptr);
	FUNC0(L, sz);
}