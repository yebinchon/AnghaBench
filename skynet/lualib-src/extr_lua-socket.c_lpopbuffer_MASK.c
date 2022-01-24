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
struct socket_buffer {int size; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct socket_buffer* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct socket_buffer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	struct socket_buffer * sb = FUNC5(L, 1);
	if (sb == NULL) {
		return FUNC2(L, "Need buffer object at param 1");
	}
	FUNC1(L,2,LUA_TTABLE);
	int sz = FUNC0(L,3);
	if (sb->size < sz || sz == 0) {
		FUNC4(L);
	} else {
		FUNC6(L,sb,sz,0);
		sb->size -= sz;
	}
	FUNC3(L, sb->size);

	return 2;
}