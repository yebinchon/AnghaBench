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
typedef  int /*<<< orphan*/  val ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/ * p_socket ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int) ; 

int FUNC4(lua_State *L, p_socket ps)
{
    int val = 0;
    socklen_t len = sizeof(val);
    if (FUNC0(*ps, SOL_SOCKET, SO_ERROR, (char *) &val, &len) < 0) {
        FUNC1(L);
        FUNC2(L, "getsockopt failed");
        return 2;
    }
    FUNC2(L, FUNC3(val));
    return 1;
}