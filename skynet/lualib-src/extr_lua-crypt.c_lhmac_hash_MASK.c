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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	uint32_t key[2];
	size_t sz = 0;
	const uint8_t *x = (const uint8_t *)FUNC2(L, 1, &sz);
	if (sz != 8) {
		FUNC3(L, "Invalid uint64 key");
	}
	key[0] = x[0] | x[1]<<8 | x[2]<<16 | x[3]<<24;
	key[1] = x[4] | x[5]<<8 | x[6]<<16 | x[7]<<24;
	const char * text = FUNC2(L, 2, &sz);
	uint8_t h[8];
	FUNC0(text,(int)sz,h);
	uint32_t htext[2];
	htext[0] = h[0] | h[1]<<8 | h[2]<<16 | h[3]<<24;
	htext[1] = h[4] | h[5]<<8 | h[6]<<16 | h[7]<<24;
	uint32_t result[2];
	FUNC1(htext,key,result);
	return FUNC4(L, result);
}