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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  G ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(lua_State *L) {
	size_t sz = 0;
	const uint8_t *x = (const uint8_t *)FUNC0(L, 1, &sz);
	if (sz != 8) {
		FUNC1(L, "Invalid dh uint64 key");
	}
	uint32_t xx[2];
	xx[0] = x[0] | x[1]<<8 | x[2]<<16 | x[3]<<24;
	xx[1] = x[4] | x[5]<<8 | x[6]<<16 | x[7]<<24;

	uint64_t x64 = (uint64_t)xx[0] | (uint64_t)xx[1]<<32;
	if (x64 == 0)
		return FUNC1(L, "Can't be 0");

	uint64_t r = FUNC2(G,	x64);
	FUNC3(L, r);
	return 1;
}