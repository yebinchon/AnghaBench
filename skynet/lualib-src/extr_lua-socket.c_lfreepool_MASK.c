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
struct buffer_node {int /*<<< orphan*/ * msg; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct buffer_node* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(lua_State *L) {
	struct buffer_node * pool = FUNC1(L, 1);
	int sz = FUNC0(L,1) / sizeof(*pool);
	int i;
	for (i=0;i<sz;i++) {
		struct buffer_node *node = &pool[i];
		if (node->msg) {
			FUNC2(node->msg);
			node->msg = NULL;
		}
	}
	return 0;
}