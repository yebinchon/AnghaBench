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
struct linger {int /*<<< orphan*/  l_linger; int /*<<< orphan*/  l_onoff; } ;
typedef  int /*<<< orphan*/  p_socket ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  li ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_LINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 

int FUNC5(lua_State *L, p_socket ps)
{
    struct linger li;                      /* obj, name */
    int len = sizeof(li);
    int err = FUNC4(L, ps, SOL_SOCKET, SO_LINGER, (char *) &li, &len);
    if (err)
        return err;
    FUNC0(L);
    FUNC1(L, li.l_onoff);
    FUNC3(L, -2, "on");
    FUNC2(L, li.l_linger);
    FUNC3(L, -2, "timeout");
    return 1;
}