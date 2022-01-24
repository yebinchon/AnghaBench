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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/ * p_socket ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static 
int FUNC3(lua_State *L, p_socket ps, int level, int name, void *val, int* len)
{
    socklen_t socklen = *len;
    if (FUNC0(*ps, level, name, (char *) val, &socklen) < 0) {
        FUNC1(L);
        FUNC2(L, "getsockopt failed");
        return 2;
    }
    *len = socklen;
    return 0;
}