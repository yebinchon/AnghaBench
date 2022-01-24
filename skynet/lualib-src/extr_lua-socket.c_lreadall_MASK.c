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
struct socket_buffer {scalar_t__ size; scalar_t__ offset; struct buffer_node* head; } ;
struct buffer_node {scalar_t__ sz; scalar_t__ msg; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct socket_buffer* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct socket_buffer*) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	struct socket_buffer * sb = FUNC5(L, 1);
	if (sb == NULL) {
		return FUNC3(L, "Need buffer object at param 1");
	}
	FUNC2(L,2,LUA_TTABLE);
	luaL_Buffer b;
	FUNC1(L, &b);
	while(sb->head) {
		struct buffer_node *current = sb->head;
		FUNC0(&b, current->msg + sb->offset, current->sz - sb->offset);
		FUNC6(L,2,sb);
	}
	FUNC4(&b);
	sb->size = 0;
	return 1;
}