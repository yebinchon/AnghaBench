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
 void* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 

void *FUNC3(lua_State *L, const char *groupname, int objidx) {
    void *data = FUNC0(L, groupname, objidx);
    if (!data) {
        char msg[45];
        FUNC2(msg, "%.35s expected", groupname);
        FUNC1(L, objidx, msg);
    }
    return data;
}