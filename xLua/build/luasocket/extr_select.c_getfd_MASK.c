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
typedef  int /*<<< orphan*/  t_socket ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 double FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static t_socket FUNC8(lua_State *L) {
    t_socket fd = SOCKET_INVALID;
    FUNC5(L, "getfd");
    FUNC1(L, -2);
    if (!FUNC2(L, -1)) {
        FUNC6(L, -2);
        FUNC0(L, 1, 1);
        if (FUNC3(L, -1)) {
            double numfd = FUNC7(L, -1); 
            fd = (numfd >= 0.0)? (t_socket) numfd: SOCKET_INVALID;
        }
    } 
    FUNC4(L, 1);
    return fd;
}