#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ thread ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC9(lua_State *L, thread *t, int argc, char **argv) {
    FUNC2(t->L, "wrk");

    FUNC8(t->L, t);
    FUNC7(t->L, -2, "thread");

    FUNC2(L, "wrk");
    FUNC1(L, -1, "setup");
    FUNC8(L, t);
    FUNC0(L, 1, 0);
    FUNC4(L, 1);

    FUNC1(t->L, -1, "init");
    FUNC3(t->L);
    for (int i = 0; i < argc; i++) {
        FUNC5(t->L, argv[i]);
        FUNC6(t->L, -2, i);
    }
    FUNC0(t->L, 1, 0);
    FUNC4(t->L, 1);
}