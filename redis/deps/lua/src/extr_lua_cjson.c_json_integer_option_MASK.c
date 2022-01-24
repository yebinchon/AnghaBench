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
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int) ; 

__attribute__((used)) static int FUNC5(lua_State *l, int optindex, int *setting,
                               int min, int max)
{
    char errmsg[64];
    int value;

    if (!FUNC2(l, optindex)) {
        value = FUNC1(l, optindex);
        FUNC4(errmsg, sizeof(errmsg), "expected integer between %d and %d", min, max);
        FUNC0(l, min <= value && value <= max, 1, errmsg);
        *setting = value;
    }

    FUNC3(l, *setting);

    return 1;
}