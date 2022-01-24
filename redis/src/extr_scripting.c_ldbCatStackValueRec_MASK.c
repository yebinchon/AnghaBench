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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LDB_MAX_VALUES_DEPTH ; 
#define  LUA_TBOOLEAN 136 
#define  LUA_TFUNCTION 135 
#define  LUA_TLIGHTUSERDATA 134 
#define  LUA_TNIL 133 
#define  LUA_TNUMBER 132 
#define  LUA_TSTRING 131 
#define  LUA_TTABLE 130 
#define  LUA_TTHREAD 129 
#define  LUA_TUSERDATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int const FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

sds FUNC17(sds s, lua_State *lua, int idx, int level) {
    int t = FUNC7(lua,idx);

    if (level++ == LDB_MAX_VALUES_DEPTH)
        return FUNC8(s,"<max recursion level reached! Nested table?>");

    switch(t) {
    case LUA_TSTRING:
        {
        size_t strl;
        char *strp = (char*)FUNC4(lua,idx,&strl);
        s = FUNC11(s,strp,strl);
        }
        break;
    case LUA_TBOOLEAN:
        s = FUNC8(s,FUNC3(lua,idx) ? "true" : "false");
        break;
    case LUA_TNUMBER:
        s = FUNC10(s,"%g",(double)FUNC5(lua,idx));
        break;
    case LUA_TNIL:
        s = FUNC9(s,"nil",3);
        break;
    case LUA_TTABLE:
        {
        int expected_index = 1; /* First index we expect in an array. */
        int is_array = 1; /* Will be set to null if check fails. */
        /* Note: we create two representations at the same time, one
         * assuming the table is an array, one assuming it is not. At the
         * end we know what is true and select the right one. */
        sds repr1 = FUNC13();
        sds repr2 = FUNC13();
        FUNC2(lua); /* The first key to start the iteration is nil. */
        while (FUNC0(lua,idx-1)) {
            /* Test if so far the table looks like an array. */
            if (is_array &&
                (FUNC7(lua,-2) != LUA_TNUMBER ||
                 FUNC5(lua,-2) != expected_index)) is_array = 0;
            /* Stack now: table, key, value */
            /* Array repr. */
            repr1 = FUNC17(repr1,lua,-1,level);
            repr1 = FUNC9(repr1,"; ",2);
            /* Full repr. */
            repr2 = FUNC9(repr2,"[",1);
            repr2 = FUNC17(repr2,lua,-2,level);
            repr2 = FUNC9(repr2,"]=",2);
            repr2 = FUNC17(repr2,lua,-1,level);
            repr2 = FUNC9(repr2,"; ",2);
            FUNC1(lua,1); /* Stack: table, key. Ready for next iteration. */
            expected_index++;
        }
        /* Strip the last " ;" from both the representations. */
        if (FUNC15(repr1)) FUNC16(repr1,0,-3);
        if (FUNC15(repr2)) FUNC16(repr2,0,-3);
        /* Select the right one and discard the other. */
        s = FUNC9(s,"{",1);
        s = FUNC12(s,is_array ? repr1 : repr2);
        s = FUNC9(s,"}",1);
        FUNC14(repr1);
        FUNC14(repr2);
        }
        break;
    case LUA_TFUNCTION:
    case LUA_TUSERDATA:
    case LUA_TTHREAD:
    case LUA_TLIGHTUSERDATA:
        {
        const void *p = FUNC6(lua,idx);
        char *typename = "unknown";
        if (t == LUA_TFUNCTION) typename = "function";
        else if (t == LUA_TUSERDATA) typename = "userdata";
        else if (t == LUA_TTHREAD) typename = "thread";
        else if (t == LUA_TLIGHTUSERDATA) typename = "light-userdata";
        s = FUNC10(s,"\"%s@%p\"",typename,p);
        }
        break;
    default:
        s = FUNC8(s,"\"<unknown-lua-type>\"");
        break;
    }
    return s;
}