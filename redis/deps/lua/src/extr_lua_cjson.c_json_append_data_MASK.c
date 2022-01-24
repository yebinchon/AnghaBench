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
#define  LUA_TBOOLEAN 133 
#define  LUA_TLIGHTUSERDATA 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC11(lua_State *l, json_config_t *cfg,
                             int current_depth, strbuf_t *json)
{
    int len;

    switch (FUNC9(l, -1)) {
    case LUA_TSTRING:
        FUNC3(l, json, -1);
        break;
    case LUA_TNUMBER:
        FUNC1(l, cfg, json, -1);
        break;
    case LUA_TBOOLEAN:
        if (FUNC7(l, -1))
            FUNC10(json, "true", 4);
        else
            FUNC10(json, "false", 5);
        break;
    case LUA_TTABLE:
        current_depth++;
        FUNC4(l, cfg, current_depth, json);
        len = FUNC6(l, cfg, json);
        if (len > 0)
            FUNC0(l, cfg, current_depth, json, len);
        else
            FUNC2(l, cfg, current_depth, json);
        break;
    case LUA_TNIL:
        FUNC10(json, "null", 4);
        break;
    case LUA_TLIGHTUSERDATA:
        if (FUNC8(l, -1) == NULL) {
            FUNC10(json, "null", 4);
            break;
        }
    default:
        /* Remaining types (LUA_TFUNCTION, LUA_TUSERDATA, LUA_TTHREAD,
         * and LUA_TLIGHTUSERDATA) cannot be serialised */
        FUNC5(l, cfg, json, -1, "type not supported");
        /* never returns */
    }
}