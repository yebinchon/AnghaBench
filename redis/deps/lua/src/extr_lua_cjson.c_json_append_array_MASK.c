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
typedef  int /*<<< orphan*/  strbuf_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  json_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC4(lua_State *l, json_config_t *cfg, int current_depth,
                              strbuf_t *json, int array_length)
{
    int comma, i;

    FUNC3(json, '[');

    comma = 0;
    for (i = 1; i <= array_length; i++) {
        if (comma)
            FUNC3(json, ',');
        else
            comma = 1;

        FUNC2(l, -1, i);
        FUNC0(l, cfg, current_depth, json);
        FUNC1(l, 1);
    }

    FUNC3(json, ']');
}