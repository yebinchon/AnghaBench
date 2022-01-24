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
struct socket_buffer {int /*<<< orphan*/ * tail; struct buffer_node* head; scalar_t__ offset; } ;
struct buffer_node {scalar_t__ sz; int /*<<< orphan*/ * msg; struct buffer_node* next; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct buffer_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 struct buffer_node* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(lua_State *L, int pool, struct socket_buffer *sb) {
	struct buffer_node *free_node = sb->head;
	sb->offset = 0;
	sb->head = free_node->next;
	if (sb->head == NULL) {
		sb->tail = NULL;
	}
	FUNC2(L,pool,1);
	free_node->next = FUNC4(L,-1);
	FUNC0(L,1);
	FUNC5(free_node->msg);
	free_node->msg = NULL;

	free_node->sz = 0;
	FUNC1(L, free_node);
	FUNC3(L, pool, 1);
}