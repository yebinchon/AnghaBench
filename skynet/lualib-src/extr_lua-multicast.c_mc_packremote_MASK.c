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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*,size_t) ; 
 void* FUNC5 (size_t) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	void * data = FUNC2(L, 1);
	size_t size = (size_t)FUNC0(L, 2);
	if (size != (uint32_t)size) {
		return FUNC1(L, "Size should be 32bit integer");
	}
	void * msg = FUNC5(size);
	FUNC3(msg, data, size);
	return FUNC4(L, msg, size);
}