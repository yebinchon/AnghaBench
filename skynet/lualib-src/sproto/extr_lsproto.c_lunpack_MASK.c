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
 void* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (void const*,size_t,void*,int) ; 

__attribute__((used)) static int
FUNC8(lua_State *L) {
	size_t sz=0;
	const void * buffer = FUNC1(L, 1, &sz);
	void * output = FUNC5(L, FUNC6(1));
	int osz = FUNC4(L, FUNC6(2));
	int r = FUNC7(buffer, sz, output, osz);
	if (r < 0)
		return FUNC2(L, "Invalid unpack stream");
	if (r > osz) {
		output = FUNC0(L, osz, r);
		r = FUNC7(buffer, sz, output, r);
		if (r < 0)
			return FUNC2(L, "Invalid unpack stream");
	}
	FUNC3(L, output, r);
	return 1;
}