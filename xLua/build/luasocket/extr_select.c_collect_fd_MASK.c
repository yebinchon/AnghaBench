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
typedef  int t_socket ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lua_Number ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int SOCKET_INVALID ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC10(lua_State *L, int tab, int itab, 
        fd_set *set, t_socket *max_fd) {
    int i = 1, n = 0;
    /* nil is the same as an empty table */
    if (FUNC5(L, tab)) return;
    /* otherwise we need it to be a table */
    FUNC3(L, tab, LUA_TTABLE);
    for ( ;; ) {
        t_socket fd;
        FUNC7(L, i);
        FUNC4(L, tab);
        if (FUNC5(L, -1)) {
            FUNC6(L, 1);
            break;
        }
        /* getfd figures out if this is a socket */
        fd = FUNC1(L);
        if (fd != SOCKET_INVALID) {
            /* make sure we don't overflow the fd_set */
#ifdef _WIN32
            if (n >= FD_SETSIZE) 
                luaL_argerror(L, tab, "too many sockets");
#else
            if (fd >= FD_SETSIZE) 
                FUNC2(L, tab, "descriptor too large for set size");
#endif
            FUNC0(fd, set);
            n++;
            /* keep track of the largest descriptor so far */
            if (*max_fd == SOCKET_INVALID || *max_fd < fd) 
                *max_fd = fd;
            /* make sure we can map back from descriptor to the object */
            FUNC7(L, (lua_Number) fd);
            FUNC8(L, -2);
            FUNC9(L, itab);
        }
        FUNC6(L, 1);
        i = i + 1;
    }
}