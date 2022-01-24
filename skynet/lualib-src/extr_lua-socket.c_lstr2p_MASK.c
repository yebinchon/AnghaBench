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
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,size_t) ; 
 void* FUNC4 (size_t) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	size_t sz = 0;
	const char * str = FUNC0(L,1,&sz);
	void *ptr = FUNC4(sz);
	FUNC3(ptr, str, sz);
	FUNC2(L, ptr);
	FUNC1(L, (int)sz);
	return 2;
}