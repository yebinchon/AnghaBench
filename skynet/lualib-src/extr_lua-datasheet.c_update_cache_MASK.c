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
struct table {int dummy; } ;
struct proxy {void const* data; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TUSERDATA ; 
 int /*<<< orphan*/  NODECACHE ; 
 int /*<<< orphan*/  PROXYCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct table* FUNC1 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,struct table const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 struct proxy* FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(lua_State *L, const void *data, const void * newdata) {
	FUNC2(L, LUA_REGISTRYINDEX, NODECACHE);
	int t = FUNC3(L);
	FUNC2(L, LUA_REGISTRYINDEX, PROXYCACHE);
	int pt = t + 1;
	FUNC5(L);	// temp table
	int nt = pt + 1;
	FUNC8(L);
	while (FUNC6(L, t) != 0) {
		// pointer (-2) -> table (-1)
		FUNC9(L, -1);
		if (FUNC10(L, pt) == LUA_TUSERDATA) {
			// pointer, table, proxy
			struct proxy * p = FUNC14(L, -1);
			if (p->data == data) {
				// update to newdata
				p->data = newdata;
				const struct table * newt = FUNC1(newdata, p->index);
				FUNC7(L, 1);
				// pointer, table
				FUNC0(L);
				FUNC9(L, FUNC15(1));
				// pointer, table, meta
				FUNC13(L, -2);
				// pointer, table
				if (newt) {
					FUNC12(L, nt, newt);
				} else {
					FUNC7(L, 1);
				}
				// pointer
				FUNC9(L, -1);
				FUNC8(L);
				FUNC11(L, t);
			} else {
				FUNC7(L, 2);
			}
		} else {
			FUNC7(L, 2);
			// pointer
		}
	}
	// copy nt to t
	FUNC8(L);
	while (FUNC6(L, nt) != 0) {
		FUNC9(L, -2);
		FUNC4(L, -2);
		// key key value
		FUNC11(L, t);
	}
	// NODECACHE PROXYCACHE TEMP
	FUNC7(L, 3);
}