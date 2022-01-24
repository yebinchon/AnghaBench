#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ json_token_t ;
typedef  int /*<<< orphan*/  json_parse_t ;

/* Variables and functions */
 scalar_t__ T_ARR_END ; 
 scalar_t__ T_COMMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC7(lua_State *l, json_parse_t *json)
{
    json_token_t token;
    int i;

    /* 2 slots required:
     * .., table, value */
    FUNC1(l, json, 2);

    FUNC5(l);

    FUNC2(json, &token);

    /* Handle empty arrays */
    if (token.type == T_ARR_END) {
        FUNC0(json);
        return;
    }

    for (i = 1; ; i++) {
        FUNC3(l, json, &token);
        FUNC6(l, -2, i);            /* arr[i] = value */

        FUNC2(json, &token);

        if (token.type == T_ARR_END) {
            FUNC0(json);
            return;
        }

        if (token.type != T_COMMA)
            FUNC4(l, json, "comma or array end", &token);

        FUNC2(json, &token);
    }
}