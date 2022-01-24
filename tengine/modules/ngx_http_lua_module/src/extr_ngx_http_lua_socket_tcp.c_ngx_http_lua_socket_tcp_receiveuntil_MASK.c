#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {unsigned int inclusive; } ;
typedef  TYPE_4__ ngx_http_lua_socket_compiled_pattern_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
#define  LUA_TBOOLEAN 129 
#define  LUA_TNIL 128 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,scalar_t__,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_socket_receiveuntil_iterator ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  pattern_udata_metatable_key ; 

__attribute__((used)) static int
FUNC21(lua_State *L)
{
    ngx_http_request_t                  *r;
    int                                  n;
    ngx_str_t                            pat;
    ngx_int_t                            rc;
    size_t                               size;
    unsigned                             inclusive = 0;

    ngx_http_lua_socket_compiled_pattern_t     *cp;

    n = FUNC5(L);
    if (n != 2 && n != 3) {
        return FUNC2(L, "expecting 2 or 3 arguments "
                          "(including the object), but got %d", n);
    }

    if (n == 3) {
        /* check out the options table */

        FUNC1(L, 3, LUA_TTABLE);

        FUNC4(L, 3, "inclusive");

        switch (FUNC15(L, -1)) {
            case LUA_TNIL:
                /* do nothing */
                break;

            case LUA_TBOOLEAN:
                if (FUNC14(L, -1)) {
                    inclusive = 1;
                }
                break;

            default:
                return FUNC2(L, "bad \"inclusive\" option value type: %s",
                                  FUNC3(L, -1));

        }

        FUNC7(L, 2);
    }

    r = FUNC16(L);
    if (r == NULL) {
        return FUNC2(L, "no request found");
    }

    FUNC19(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket calling receiveuntil() method");

    FUNC1(L, 1, LUA_TTABLE);

    pat.data = (u_char *) FUNC0(L, 2, &pat.len);
    if (pat.len == 0) {
        FUNC11(L);
        FUNC10(L, "pattern is empty");
        return 2;
    }

    size = sizeof(ngx_http_lua_socket_compiled_pattern_t);

    cp = FUNC6(L, size);
    if (cp == NULL) {
        return FUNC2(L, "no memory");
    }

    FUNC9(L, FUNC17(
                          pattern_udata_metatable_key));
    FUNC12(L, LUA_REGISTRYINDEX);
    FUNC13(L, -2);

    FUNC20(cp, size);

    cp->inclusive = inclusive;

    rc = FUNC18(pat.data, pat.len, cp,
                                             r->connection->log);

    if (rc != NGX_OK) {
        FUNC11(L);
        FUNC10(L, "failed to compile pattern");
        return 2;
    }

    FUNC8(L, ngx_http_lua_socket_receiveuntil_iterator, 3);
    return 1;
}