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
struct buffer_node {struct buffer_node* next; scalar_t__ sz; int /*<<< orphan*/ * msg; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  lfreepool ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct buffer_node* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(lua_State *L, int sz) {
	struct buffer_node * pool = FUNC1(L, sizeof(struct buffer_node) * sz);
	int i;
	for (i=0;i<sz;i++) {
		pool[i].msg = NULL;
		pool[i].sz = 0;
		pool[i].next = &pool[i+1];
	}
	pool[sz-1].next = NULL;
	if (FUNC0(L, "buffer_pool")) {
		FUNC2(L, lfreepool);
		FUNC3(L, -2, "__gc");
	}
	FUNC4(L, -2);
	return 1;
}