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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_ERRFILE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(lua_State *L, const char *what, int fname_index)
{
    const char      *serr;
    const char      *filename;

    filename = FUNC2(L, fname_index) + 1;

    if (errno) {
        serr = FUNC3(errno);
        FUNC0(L, "cannot %s %s: %s", what, filename, serr);

    } else {
        FUNC0(L, "cannot %s %s", what, filename);
    }

    FUNC1(L, fname_index);

    return LUA_ERRFILE;
}