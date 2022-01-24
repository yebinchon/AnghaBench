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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int SMALL_CHUNK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	uint32_t ESK[32];
	FUNC1(L, ESK);
	uint32_t SK[32];
	int i;
	for( i = 0; i < 32; i += 2 ) {
		SK[i] = ESK[30 - i];
		SK[i + 1] = ESK[31 - i];
	}
	size_t textsz = 0;
	const uint8_t *text = (const uint8_t *)FUNC2(L, 2, &textsz);
	if ((textsz & 7) || textsz == 0) {
		return FUNC3(L, "Invalid des crypt text length %d", (int)textsz);
	}
	uint8_t tmp[SMALL_CHUNK];
	uint8_t *buffer = tmp;
	if (textsz > SMALL_CHUNK) {
		buffer = FUNC4(L, textsz);
	}
	for (i=0;i<textsz;i+=8) {
		FUNC0(SK, text+i, buffer+i);
	}
	int padding = 1;
	for (i=textsz-1;i>=textsz-8;i--) {
		if (buffer[i] == 0) {
			padding++;
		} else if (buffer[i] == 0x80) {
			break;
		} else {
			return FUNC3(L, "Invalid des crypt text");
		}
	}
	if (padding > 8) {
		return FUNC3(L, "Invalid des crypt text");
	}
	FUNC5(L, (const char *)buffer, textsz - padding);
	return 1;
}