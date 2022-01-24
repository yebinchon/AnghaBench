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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_TBOOLEAN 133 
#define  LUA_TLIGHTUSERDATA 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 
 double FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

u_char *
FUNC11(lua_State *L, int index, u_char *dst)
{
    double               key;
    int                  max;
    int                  i;
    int                  type;
    size_t               len;
    u_char              *p;

    if (index < 0) {
        index = FUNC1(L) + index + 1;
    }

    max = 0;

    FUNC4(L); /* stack: table key */
    while (FUNC2(L, index) != 0) { /* stack: table key value */
        key = FUNC8(L, -2);
        if (key > max) {
            max = (int) key;
        }

        FUNC3(L, 1); /* stack: table key */
    }

    for (i = 1; i <= max; i++) {
        FUNC5(L, index, i); /* stack: table value */
        type = FUNC9(L, -1);
        switch (type) {
            case LUA_TNUMBER:
            case LUA_TSTRING:
                p = (u_char *) FUNC7(L, -1, &len);
                dst = FUNC10(dst, p, len);
                break;

            case LUA_TNIL:
                *dst++ = 'n';
                *dst++ = 'i';
                *dst++ = 'l';
                break;

            case LUA_TBOOLEAN:
                if (FUNC6(L, -1)) {
                    *dst++ = 't';
                    *dst++ = 'r';
                    *dst++ = 'u';
                    *dst++ = 'e';

                } else {
                    *dst++ = 'f';
                    *dst++ = 'a';
                    *dst++ = 'l';
                    *dst++ = 's';
                    *dst++ = 'e';
                }

                break;

            case LUA_TTABLE:
                dst = FUNC11(L, -1, dst);
                break;

            case LUA_TLIGHTUSERDATA:

                *dst++ = 'n';
                *dst++ = 'u';
                *dst++ = 'l';
                *dst++ = 'l';
                break;

            default:
                FUNC0(L, "impossible to reach here");
                return NULL;
        }

        FUNC3(L, 1); /* stack: table */
    }

    return dst;
}