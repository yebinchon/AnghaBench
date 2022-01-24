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
struct encode_ud {int /*<<< orphan*/  array_index; scalar_t__ iter_key; scalar_t__ iter_table; scalar_t__ iter_func; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(lua_State *L, struct encode_ud * self) {
	// todo: check the key is equal to mainindex value
	if (self->iter_func) {
		FUNC4(L, self->iter_func);
		FUNC4(L, self->iter_table);
		FUNC4(L, self->iter_key);
		FUNC0(L, 2, 2);
		if (FUNC1(L, -2)) {
			FUNC3(L, 2);
			return 0;
		}
		return 1;
	} else {
		FUNC4(L,self->iter_key);
		return FUNC2(L, self->array_index);
	}
}