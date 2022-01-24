#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* member_0; int (* member_1 ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/  CJSON_MODNAME ; 
 int /*<<< orphan*/  CJSON_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC16(lua_State *l)
{
    luaL_Reg reg[] = {
        { "encode", json_encode },
        { "decode", json_decode },
        { "encode_sparse_array", json_cfg_encode_sparse_array },
        { "encode_max_depth", json_cfg_encode_max_depth },
        { "decode_max_depth", json_cfg_decode_max_depth },
        { "encode_number_precision", json_cfg_encode_number_precision },
        { "encode_keep_buffer", json_cfg_encode_keep_buffer },
        { "encode_invalid_numbers", json_cfg_encode_invalid_numbers },
        { "decode_invalid_numbers", json_cfg_decode_invalid_numbers },
        { "new", lua_cjson_new },
        { NULL, NULL }
    };

    /* Initialise number conversions */
    FUNC0();

    /* cjson module table */
    FUNC12(l);

    /* Register functions with config data as upvalue */
    FUNC8(l);
    FUNC11(l, reg, 1);

    /* Set cjson.null */
    FUNC13(l, NULL);
    FUNC15(l, -2, "null");

    /* Set module name / version fields */
    FUNC14(l, CJSON_MODNAME);
    FUNC15(l, -2, "_NAME");
    FUNC14(l, CJSON_VERSION);
    FUNC15(l, -2, "_VERSION");

    return 1;
}