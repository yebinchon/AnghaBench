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
struct stm_copy {int /*<<< orphan*/  sz; int /*<<< orphan*/  msg; } ;
struct boxreader {struct stm_copy* lastcopy; int /*<<< orphan*/  obj; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MULTRET ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 struct boxreader* FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct stm_copy* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct stm_copy*) ; 

__attribute__((used)) static int
FUNC12(lua_State *L) {
	struct boxreader * box = FUNC9(L, 1);
	FUNC0(L, 2, LUA_TFUNCTION);

	struct stm_copy * copy = FUNC10(box->obj);
	if (copy == box->lastcopy) {
		// not update
		FUNC11(copy);
		FUNC3(L, 0);
		return 1;
	}

	FUNC11(box->lastcopy);
	box->lastcopy = copy;
	if (copy) {
		FUNC8(L, 3);
		FUNC7(L, 1);
		FUNC8(L, 2);
		FUNC5(L, copy->msg);
		FUNC4(L, copy->sz);
		FUNC6(L, 1);
		FUNC1(L, 3, LUA_MULTRET);
		FUNC3(L, 1);
		FUNC7(L, 1);
		return FUNC2(L);
	} else {
		FUNC3(L, 0);
		return 1;
	}
}