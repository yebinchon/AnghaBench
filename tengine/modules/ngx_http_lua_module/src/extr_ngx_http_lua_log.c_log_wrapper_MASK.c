#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int off_t ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_8__ {char* data; int len; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_9__ {scalar_t__ log_level; } ;
typedef  TYPE_2__ ngx_log_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {char* namewhat; char* what; char* name; scalar_t__ linedefined; scalar_t__ currentline; scalar_t__ short_src; } ;
typedef  TYPE_3__ lua_Debug ;

/* Variables and functions */
#define  LUA_TBOOLEAN 133 
#define  LUA_TLIGHTUSERDATA 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int NGX_INT_T_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,char*,char const*,size_t,char*) ; 
 char* FUNC15 (char*,int,char*,scalar_t__) ; 
 size_t FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(ngx_log_t *log, const char *ident, ngx_uint_t level,
    lua_State *L)
{
    u_char              *buf;
    u_char              *p, *q;
    ngx_str_t            name;
    int                  nargs, i;
    size_t               size, len;
    size_t               src_len = 0;
    int                  type;
    const char          *msg;
    lua_Debug            ar;

    if (level > log->log_level) {
        return 0;
    }

#if 1
    /* add debug info */

    FUNC4(L, 1, &ar);
    FUNC3(L, "Snl", &ar);

    /* get the basename of the Lua source file path, stored in q */
    name.data = (u_char *) ar.short_src;
    if (name.data == NULL) {
        name.len = 0;

    } else {
        p = name.data;
        while (*p != '\0') {
            if (*p == '/' || *p == '\\') {
                name.data = p + 1;
            }
            p++;
        }

        name.len = p - name.data;
    }

#endif

    nargs = FUNC5(L);

    size = name.len + NGX_INT_T_LEN + sizeof(":: ") - 1;

    if (*ar.namewhat != '\0' && *ar.what == 'L') {
        src_len = FUNC16(ar.name);
        size += src_len + sizeof("(): ") - 1;
    }

    for (i = 1; i <= nargs; i++) {
        type = FUNC11(L, i);
        switch (type) {
            case LUA_TNUMBER:
            case LUA_TSTRING:
                FUNC9(L, i, &len);
                size += len;
                break;

            case LUA_TNIL:
                size += sizeof("nil") - 1;
                break;

            case LUA_TBOOLEAN:
                if (FUNC8(L, i)) {
                    size += sizeof("true") - 1;

                } else {
                    size += sizeof("false") - 1;
                }

                break;

            case LUA_TTABLE:
                if (!FUNC1(L, i, "__tostring")) {
                    return FUNC0(L, i, "expected table to have "
                                         "__tostring metamethod");
                }

                FUNC9(L, -1, &len);
                size += len;
                break;

            case LUA_TLIGHTUSERDATA:
                if (FUNC10(L, i) == NULL) {
                    size += sizeof("null") - 1;
                    break;
                }

                continue;

            default:
                msg = FUNC7(L, "string, number, boolean, or nil "
                                      "expected, got %s",
                                      FUNC12(L, type));
                return FUNC0(L, i, msg);
        }
    }

    buf = FUNC6(L, size);

    p = FUNC13(buf, name.data, name.len);

    *p++ = ':';

    p = FUNC15(p, NGX_INT_T_LEN, "%d",
                     ar.currentline ? ar.currentline : ar.linedefined);

    *p++ = ':'; *p++ = ' ';

    if (*ar.namewhat != '\0' && *ar.what == 'L') {
        p = FUNC13(p, ar.name, src_len);
        *p++ = '(';
        *p++ = ')';
        *p++ = ':';
        *p++ = ' ';
    }

    for (i = 1; i <= nargs; i++) {
        type = FUNC11(L, i);
        switch (type) {
            case LUA_TNUMBER:
            case LUA_TSTRING:
                q = (u_char *) FUNC9(L, i, &len);
                p = FUNC13(p, q, len);
                break;

            case LUA_TNIL:
                *p++ = 'n';
                *p++ = 'i';
                *p++ = 'l';
                break;

            case LUA_TBOOLEAN:
                if (FUNC8(L, i)) {
                    *p++ = 't';
                    *p++ = 'r';
                    *p++ = 'u';
                    *p++ = 'e';

                } else {
                    *p++ = 'f';
                    *p++ = 'a';
                    *p++ = 'l';
                    *p++ = 's';
                    *p++ = 'e';
                }

                break;

            case LUA_TTABLE:
                FUNC1(L, i, "__tostring");
                q = (u_char *) FUNC9(L, -1, &len);
                p = FUNC13(p, q, len);
                break;

            case LUA_TLIGHTUSERDATA:
                *p++ = 'n';
                *p++ = 'u';
                *p++ = 'l';
                *p++ = 'l';

                break;

            default:
                return FUNC2(L, "impossible to reach here");
        }
    }

    if (p - buf > (off_t) size) {
        return FUNC2(L, "buffer error: %d > %d", (int) (p - buf),
                          (int) size);
    }

    FUNC14(level, log, 0, "%s%*s", ident, (size_t) (p - buf), buf);

    return 0;
}