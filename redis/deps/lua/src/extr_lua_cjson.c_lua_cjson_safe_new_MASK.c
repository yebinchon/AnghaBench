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
 int /*<<< orphan*/  json_protect_conversion ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static int FUNC5(lua_State *l)
{
    const char *func[] = { "decode", "encode", NULL };
    int i;

    FUNC0(l);

    /* Fix new() method */
    FUNC3(l, lua_cjson_safe_new);
    FUNC4(l, -2, "new");

    for (i = 0; func[i]; i++) {
        FUNC1(l, -1, func[i]);
        FUNC2(l, json_protect_conversion, 1);
        FUNC4(l, -2, func[i]);
    }

    return 1;
}