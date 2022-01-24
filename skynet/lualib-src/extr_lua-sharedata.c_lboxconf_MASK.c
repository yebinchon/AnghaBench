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
struct table {int /*<<< orphan*/  L; } ;
struct state {int /*<<< orphan*/  ref; } ;
struct ctrl {int /*<<< orphan*/ * update; struct table* root; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct table* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ctrl* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct state* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  releaseobj ; 

__attribute__((used)) static int
FUNC8(lua_State *L) {
	struct table * tbl = FUNC1(L,1);	
	struct state * s = FUNC7(tbl->L, 1);
	FUNC0(&s->ref);

	struct ctrl * c = FUNC3(L, sizeof(*c));
	c->root = tbl;
	c->update = NULL;
	if (FUNC2(L, "confctrl")) {
		FUNC4(L, releaseobj);
		FUNC5(L, -2, "__gc");
	}
	FUNC6(L, -2);

	return 1;
}