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
 void* FUNC0 (int /*<<< orphan*/ *,int,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (void const*,size_t,void*,size_t) ; 

__attribute__((used)) static int
FUNC8(lua_State *L) {
	size_t sz=0;
	const void * buffer = FUNC1(L, 1, &sz);
	// the worst-case space overhead of packing is 2 bytes per 2 KiB of input (256 words = 2KiB).
	size_t maxsz = (sz + 2047) / 2048 * 2 + sz + 2;
	void * output = FUNC5(L, FUNC6(1));
	int bytes;
	int osz = FUNC4(L, FUNC6(2));
	if (osz < maxsz) {
		output = FUNC0(L, osz, maxsz);
	}
	bytes = FUNC7(buffer, sz, output, maxsz);
	if (bytes > maxsz) {
		return FUNC2(L, "packing error, return size = %d", bytes);
	}
	FUNC3(L, output, bytes);

	return 1;
}