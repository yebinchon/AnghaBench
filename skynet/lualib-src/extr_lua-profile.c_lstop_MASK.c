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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  LUA_TTHREAD ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 double FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC16(lua_State *L) {
	if (FUNC4(L) != 0) {
		FUNC11(L,1);
		FUNC2(L, 1, LUA_TTHREAD);
	} else {
		FUNC7(L);
	}
	FUNC8(L, 1);	// push coroutine
	FUNC9(L, FUNC15(1));
	if (FUNC14(L, -1) != LUA_TNUMBER) {
		return FUNC3(L, "Call profile.start() before profile.stop()");
	} 
	double ti = FUNC0(FUNC12(L, -1));
	FUNC8(L, 1);	// push coroutine
	FUNC9(L, FUNC15(2));
	double total_time = FUNC12(L, -1);

	FUNC8(L, 1);	// push coroutine
	FUNC5(L);
	FUNC10(L, FUNC15(1));

	FUNC8(L, 1);	// push coroutine
	FUNC5(L);
	FUNC10(L, FUNC15(2));

	total_time += ti;
	FUNC6(L, total_time);
#ifdef DEBUG_LOG
	fprintf(stderr, "PROFILE [%p] stop (%lf/%lf)\n", lua_tothread(L,1), ti, total_time);
#endif

	return 1;
}