#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  currentline; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 TYPE_1__ ldb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(lua_State *lua) {
    if (!ldb.active) return 0;
    int argc = FUNC2(lua);
    sds log = FUNC4(FUNC5(),"<debug> line %d: ", ldb.currentline);
    while(argc--) {
        log = FUNC0(log,lua,-1 - argc);
        if (argc != 0) log = FUNC3(log,", ",2);
    }
    FUNC1(log);
    return 0;
}