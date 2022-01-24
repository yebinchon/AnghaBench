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
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ SOCKET_INVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(lua_State *L, int tab, int dtab, fd_set *set) {
    int ndirty = 0, i = 1;
    if (FUNC4(L, tab)) 
        return 0;
    for ( ;; ) { 
        t_socket fd;
        FUNC6(L, i);
        FUNC3(L, tab);
        if (FUNC4(L, -1)) {
            FUNC5(L, 1);
            break;
        }
        fd = FUNC2(L);
        if (fd != SOCKET_INVALID && FUNC1(L)) {
            FUNC6(L, ++ndirty);
            FUNC7(L, -2);
            FUNC8(L, dtab);
            FUNC0(fd, set);
        }
        FUNC5(L, 1);
        i = i + 1;
    }
    return ndirty;
}