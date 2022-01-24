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
typedef  scalar_t__ t_socket ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lua_Number ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(lua_State *L, fd_set *set, t_socket max_fd, 
        int itab, int tab, int start) {
    t_socket fd;
    for (fd = 0; fd < max_fd; fd++) {
        if (FUNC0(fd, set)) {
            FUNC2(L, ++start);
            FUNC2(L, (lua_Number) fd);
            FUNC1(L, itab);
            FUNC3(L, tab);
        }
    }
}