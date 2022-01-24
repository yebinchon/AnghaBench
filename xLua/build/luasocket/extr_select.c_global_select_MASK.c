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
typedef  int /*<<< orphan*/  t_timeout ;
typedef  scalar_t__ t_socket ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SOCKET_INVALID ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 double FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,int,int) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,double,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(lua_State *L) {
    int rtab, wtab, itab, ret, ndirty;
    t_socket max_fd = SOCKET_INVALID;
    fd_set rset, wset;
    t_timeout tm;
    double t = FUNC4(L, 3, -1);
    FUNC0(&rset); FUNC0(&wset);
    FUNC8(L, 3);
    FUNC6(L); itab = FUNC5(L);
    FUNC6(L); rtab = FUNC5(L);
    FUNC6(L); wtab = FUNC5(L);
    FUNC2(L, 1, itab, &rset, &max_fd);
    FUNC2(L, 2, itab, &wset, &max_fd);
    ndirty = FUNC1(L, 1, rtab, &rset);
    t = ndirty > 0? 0.0: t;
    FUNC12(&tm, t, -1);
    FUNC13(&tm);
    ret = FUNC11(max_fd+1, &rset, &wset, NULL, &tm);
    if (ret > 0 || ndirty > 0) {
        FUNC10(L, &rset, max_fd+1, itab, rtab, ndirty);
        FUNC10(L, &wset, max_fd+1, itab, wtab, 0);
        FUNC9(L, rtab);
        FUNC9(L, wtab);
        return 2;
    } else if (ret == 0) {
        FUNC7(L, "timeout");
        return 3;
    } else {
        FUNC3(L, "select failed");
        return 3;
    }
}