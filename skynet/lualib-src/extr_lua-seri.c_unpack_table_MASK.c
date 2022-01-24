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
typedef  int /*<<< orphan*/  type ;
struct read_block {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MINSTACK ; 
 int MAX_COOKIE ; 
 int TYPE_NUMBER ; 
 int TYPE_NUMBER_REAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct read_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct read_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int* FUNC8 (struct read_block*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct read_block*) ; 

__attribute__((used)) static void
FUNC10(lua_State *L, struct read_block *rb, int array_size) {
	if (array_size == MAX_COOKIE-1) {
		uint8_t type;
		uint8_t *t = FUNC8(rb, sizeof(type));
		if (t==NULL) {
			FUNC1(L,rb);
		}
		type = *t;
		int cookie = type >> 3;
		if ((type & 7) != TYPE_NUMBER || cookie == TYPE_NUMBER_REAL) {
			FUNC1(L,rb);
		}
		array_size = FUNC0(L,rb,cookie);
	}
	FUNC2(L,LUA_MINSTACK,NULL);
	FUNC3(L,array_size,0);
	int i;
	for (i=1;i<=array_size;i++) {
		FUNC9(L,rb);
		FUNC7(L,-2,i);
	}
	for (;;) {
		FUNC9(L,rb);
		if (FUNC4(L,-1)) {
			FUNC5(L,1);
			return;
		}
		FUNC9(L,rb);
		FUNC6(L,-3);
	}
}