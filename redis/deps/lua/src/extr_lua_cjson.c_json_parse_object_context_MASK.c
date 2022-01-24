#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {int /*<<< orphan*/  string; } ;
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  string_len; TYPE_1__ value; } ;
typedef  TYPE_2__ json_token_t ;
typedef  int /*<<< orphan*/  json_parse_t ;

/* Variables and functions */
 scalar_t__ T_COLON ; 
 scalar_t__ T_COMMA ; 
 scalar_t__ T_OBJ_END ; 
 scalar_t__ T_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(lua_State *l, json_parse_t *json)
{
    json_token_t token;

    /* 3 slots required:
     * .., table, key, value */
    FUNC1(l, json, 3);

    FUNC5(l);

    FUNC2(json, &token);

    /* Handle empty objects */
    if (token.type == T_OBJ_END) {
        FUNC0(json);
        return;
    }

    while (1) {
        if (token.type != T_STRING)
            FUNC4(l, json, "object key string", &token);

        /* Push key */
        FUNC6(l, token.value.string, token.string_len);

        FUNC2(json, &token);
        if (token.type != T_COLON)
            FUNC4(l, json, "colon", &token);

        /* Fetch value */
        FUNC2(json, &token);
        FUNC3(l, json, &token);

        /* Set key = value */
        FUNC7(l, -3);

        FUNC2(json, &token);

        if (token.type == T_OBJ_END) {
            FUNC0(json);
            return;
        }

        if (token.type != T_COMMA)
            FUNC4(l, json, "comma or object end", &token);

        FUNC2(json, &token);
    }
}