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
struct socket_buffer {scalar_t__ size; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct socket_buffer* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct socket_buffer*) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	struct socket_buffer * sb = FUNC3(L, 1);
	if (sb == NULL) {
		if (FUNC2(L, 1)) {
			return 0;
		}
		return FUNC1(L, "Need buffer object at param 1");
	}
	FUNC0(L,2,LUA_TTABLE);
	while(sb->head) {
		FUNC4(L,2,sb);
	}
	sb->size = 0;
	return 0;
}