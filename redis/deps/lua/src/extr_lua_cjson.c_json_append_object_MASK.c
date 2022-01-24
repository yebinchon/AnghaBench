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
 int LUA_TNUMBER ; 
 int LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC10(lua_State *l, json_config_t *cfg,
                               int current_depth, strbuf_t *json)
{
    int comma, keytype;

    /* Object */
    FUNC8(json, '{');

    FUNC6(l);
    /* table, startkey */
    comma = 0;
    while (FUNC4(l, -2) != 0) {
        if (comma)
            FUNC8(json, ',');
        else
            comma = 1;

        /* table, key, value */
        keytype = FUNC7(l, -2);
        if (keytype == LUA_TNUMBER) {
            FUNC8(json, '"');
            FUNC1(l, cfg, json, -2);
            FUNC9(json, "\":", 2);
        } else if (keytype == LUA_TSTRING) {
            FUNC2(l, json, -2);
            FUNC8(json, ':');
        } else {
            FUNC3(l, cfg, json, -2,
                                  "table key must be a number or string");
            /* never returns */
        }

        /* table, key, value */
        FUNC0(l, cfg, current_depth, json);
        FUNC5(l, 1);
        /* table, key */
    }

    FUNC8(json, '}');
}