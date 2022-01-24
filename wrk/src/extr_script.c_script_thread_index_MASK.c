#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ thread ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  script_thread_get ; 
 int /*<<< orphan*/  script_thread_set ; 
 int /*<<< orphan*/  script_thread_stop ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(lua_State *L) {
    thread *t = FUNC0(L);
    const char *key = FUNC2(L, 2);
    if (!FUNC4("get",  key)) FUNC1(L, script_thread_get);
    if (!FUNC4("set",  key)) FUNC1(L, script_thread_set);
    if (!FUNC4("stop", key)) FUNC1(L, script_thread_stop);
    if (!FUNC4("addr", key)) FUNC3(L, t->addr);
    return 1;
}