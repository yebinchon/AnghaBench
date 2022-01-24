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
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(lua_State *l, int optindex, int *setting,
                            const char **options, int bool_true)
{
    static const char *bool_options[] = { "off", "on", NULL };

    if (!options) {
        options = bool_options;
        bool_true = 1;
    }

    if (!FUNC2(l, optindex)) {
        if (bool_true && FUNC1(l, optindex))
            *setting = FUNC5(l, optindex) * bool_true;
        else
            *setting = FUNC0(l, optindex, NULL, options);
    }

    if (bool_true && (*setting == 0 || *setting == bool_true))
        FUNC3(l, *setting);
    else
        FUNC4(l, options[*setting]);

    return 1;
}