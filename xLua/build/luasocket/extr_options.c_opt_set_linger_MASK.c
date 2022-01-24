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
typedef  void* u_short ;
struct linger {void* l_linger; void* l_onoff; } ;
typedef  int /*<<< orphan*/  p_socket ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  li ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_LINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC11(lua_State *L, p_socket ps)
{
    struct linger li;                      /* obj, name, table */
    if (!FUNC5(L, 3)) FUNC0(L,3,FUNC9(L, LUA_TTABLE));
    FUNC6(L, "on");
    FUNC2(L, 3);
    if (!FUNC3(L, -1)) 
        FUNC1(L, 3, "boolean 'on' field expected");
    li.l_onoff = (u_short) FUNC7(L, -1);
    FUNC6(L, "timeout");
    FUNC2(L, 3);
    if (!FUNC4(L, -1)) 
        FUNC1(L, 3, "number 'timeout' field expected");
    li.l_linger = (u_short) FUNC8(L, -1);
    return FUNC10(L, ps, SOL_SOCKET, SO_LINGER, (char *) &li, sizeof(li));
}