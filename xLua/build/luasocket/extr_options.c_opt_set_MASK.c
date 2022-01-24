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
typedef  int /*<<< orphan*/ * p_socket ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int,char*,int) ; 

__attribute__((used)) static 
int FUNC4(lua_State *L, p_socket ps, int level, int name, void *val, int len)
{
    if (FUNC3(*ps, level, name, (char *) val, len) < 0) {
        FUNC0(L);
        FUNC2(L, "setsockopt failed");
        return 2;
    }
    FUNC1(L, 1);
    return 1;
}