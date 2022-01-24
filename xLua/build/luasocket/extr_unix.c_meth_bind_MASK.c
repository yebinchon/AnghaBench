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
typedef  int /*<<< orphan*/  p_unix ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6(lua_State *L) {
    p_unix un = (p_unix) FUNC0(L, "unix{master}", 1);
    const char *path =  FUNC1(L, 2);
    const char *err = FUNC5(un, path);
    if (err) {
        FUNC2(L);
        FUNC4(L, err);
        return 2;
    }
    FUNC3(L, 1);
    return 1;
}