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
typedef  int /*<<< orphan*/  uint8_t ;
struct write_block {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MAX_COOKIE ; 
 int /*<<< orphan*/  TYPE_TABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct write_block*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct write_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct write_block*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(lua_State *L, struct write_block * wb, int index, int depth) {
	int array_size = FUNC3(L,index);
	if (array_size >= MAX_COOKIE-1) {
		uint8_t n = FUNC0(TYPE_TABLE, MAX_COOKIE-1);
		FUNC6(wb, &n, 1);
		FUNC5(wb, array_size);
	} else {
		uint8_t n = FUNC0(TYPE_TABLE, array_size);
		FUNC6(wb, &n, 1);
	}

	int i;
	for (i=1;i<=array_size;i++) {
		FUNC2(L,index,i);
		FUNC4(L, wb, -1, depth);
		FUNC1(L,1);
	}

	return array_size;
}