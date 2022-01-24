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
#define  LUA_TBOOLEAN 133 
#define  LUA_TLIGHTUSERDATA 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 double FUNC1 (double) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,size_t*) ; 
 double FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

size_t
FUNC16(lua_State *L, int index, int arg_i,
    unsigned strict)
{
    double              key;
    int                 max;
    int                 i;
    int                 type;
    size_t              size;
    size_t              len;
    const char         *msg;

    if (index < 0) {
        index = FUNC4(L) + index + 1;
    }

    FUNC0("table index: %d", index);

    max = 0;

    FUNC8(L); /* stack: table key */
    while (FUNC5(L, index) != 0) { /* stack: table key value */
        FUNC0("key type: %s", FUNC3(L, -2));

        if (FUNC14(L, -2) == LUA_TNUMBER) {

            key = FUNC12(L, -2);

            FUNC0("key value: %d", (int) key);

            if (FUNC1(key) == key && key >= 1) {
                if (key > max) {
                    max = (int) key;
                }

                FUNC6(L, 1); /* stack: table key */
                continue;
            }
        }

        /* not an array (non positive integer key) */
        FUNC6(L, 2); /* stack: table */

        FUNC2(L, arg_i, "non-array table found");
        return 0;
    }

    size = 0;

    for (i = 1; i <= max; i++) {
        FUNC9(L, index, i); /* stack: table value */
        type = FUNC14(L, -1);

        switch (type) {
            case LUA_TNUMBER:
            case LUA_TSTRING:

                FUNC11(L, -1, &len);
                size += len;
                break;

            case LUA_TNIL:

                if (strict) {
                    goto bad_type;
                }

                size += sizeof("nil") - 1;
                break;

            case LUA_TBOOLEAN:

                if (strict) {
                    goto bad_type;
                }

                if (FUNC10(L, -1)) {
                    size += sizeof("true") - 1;

                } else {
                    size += sizeof("false") - 1;
                }

                break;

            case LUA_TTABLE:

                size += FUNC16(L, -1, arg_i, strict);
                break;

            case LUA_TLIGHTUSERDATA:

                if (strict) {
                    goto bad_type;
                }

                if (FUNC13(L, -1) == NULL) {
                    size += sizeof("null") - 1;
                    break;
                }

                continue;

            default:

bad_type:

                msg = FUNC7(L, "bad data type %s found",
                                      FUNC15(L, type));
                return FUNC2(L, arg_i, msg);
        }

        FUNC6(L, 1); /* stack: table */
    }

    return size;
}