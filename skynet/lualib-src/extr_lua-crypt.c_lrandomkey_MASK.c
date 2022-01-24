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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 () ; 

__attribute__((used)) static int
FUNC2(lua_State *L) {
	char tmp[8];
	int i;
	char x = 0;
	for (i=0;i<8;i++) {
		tmp[i] = FUNC1() & 0xff;
		x ^= tmp[i];
	}
	if (x==0) {
		tmp[0] |= 1;	// avoid 0
	}
	FUNC0(L, tmp, 8);
	return 1;
}