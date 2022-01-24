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
 int ENCODE_MAXSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void *
FUNC5(lua_State *L, int osz, int nsz) {
	void *output;
	do {
		osz *= 2;
	} while (osz < nsz);
	if (osz > ENCODE_MAXSIZE) {
		FUNC0(L, "object is too large (>%d)", ENCODE_MAXSIZE);
		return NULL;
	}
	output = FUNC1(L, osz);
	FUNC3(L, FUNC4(1));
	FUNC2(L, osz);
	FUNC3(L, FUNC4(2));

	return output;
}