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
struct socket_buffer {int offset; struct buffer_node* head; } ;
struct buffer_node {int sz; int msg; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,struct socket_buffer*) ; 

__attribute__((used)) static void
FUNC6(lua_State *L, struct socket_buffer *sb, int sz, int skip) {
	struct buffer_node * current = sb->head;
	if (sz < current->sz - sb->offset) {
		FUNC4(L, current->msg + sb->offset, sz-skip);
		sb->offset+=sz;
		return;
	}
	if (sz == current->sz - sb->offset) {
		FUNC4(L, current->msg + sb->offset, sz-skip);
		FUNC5(L,2,sb);
		return;
	}

	luaL_Buffer b;
	FUNC2(L, &b);
	for (;;) {
		int bytes = current->sz - sb->offset;
		if (bytes >= sz) {
			if (sz > skip) {
				FUNC1(&b, current->msg + sb->offset, sz - skip);
			} 
			sb->offset += sz;
			if (bytes == sz) {
				FUNC5(L,2,sb);
			}
			break;
		}
		int real_sz = sz - skip;
		if (real_sz > 0) {
			FUNC1(&b, current->msg + sb->offset, (real_sz < bytes) ? real_sz : bytes);
		}
		FUNC5(L,2,sb);
		sz-=bytes;
		if (sz==0)
			break;
		current = sb->head;
		FUNC0(current);
	}
	FUNC3(&b);
}