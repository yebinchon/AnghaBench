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
 int FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,char const*,int) ; 

__attribute__((used)) static int
FUNC4(lua_State *L) {
	const char * rawlen_str = FUNC1(L, 1);
	int rawlen = 0;
	FUNC3(&rawlen, rawlen_str, sizeof(int));
	int length = FUNC0(rawlen);
	FUNC2(L, length - 4);
	return 1;
}