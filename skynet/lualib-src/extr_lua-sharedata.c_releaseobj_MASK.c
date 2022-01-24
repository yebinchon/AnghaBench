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
struct table {int /*<<< orphan*/ * L; } ;
struct state {int /*<<< orphan*/  ref; } ;
struct ctrl {int /*<<< orphan*/ * update; struct table* root; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(lua_State *L) {
	struct ctrl *c = FUNC1(L, 1);
	struct table *tbl = c->root;
	struct state *s = FUNC1(tbl->L, 1);
	FUNC0(&s->ref);
	c->root = NULL;
	c->update = NULL;

	return 0;
}