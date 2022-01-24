#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_9__ {char* data; size_t len; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_10__ {scalar_t__ http_version; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNIL ; 
 scalar_t__ LUA_TTABLE ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_VERSION_10 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_1__,TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 
 void* FUNC11 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC13(lua_State *L)
{
    ngx_http_request_t          *r;
    u_char                      *p;
    ngx_str_t                    key;
    ngx_str_t                    value;
    ngx_uint_t                   i;
    size_t                       len;
    ngx_int_t                    rc;
    ngx_uint_t                   n;

    r = FUNC8(L);
    if (r == NULL) {
        return FUNC2(L, "no request object found");
    }

    FUNC7(L, r);

    if (r->http_version < NGX_HTTP_VERSION_10) {
        return 0;
    }

    p = (u_char *) FUNC1(L, 1, &len);

    FUNC0("key: %.*s, len %d", (int) len, p, (int) len);

#if 0
    /* replace "_" with "-" */
    for (i = 0; i < len; i++) {
        if (p[i] == '_') {
            p[i] = '-';
        }
    }
#endif

    key.data = FUNC11(r->pool, len + 1);
    if (key.data == NULL) {
        return FUNC2(L, "no memory");
    }

    FUNC10(key.data, p, len);

    key.data[len] = '\0';

    key.len = len;

    if (FUNC6(L, 2) == LUA_TNIL) {
        FUNC12(&value);

    } else if (FUNC6(L, 2) == LUA_TTABLE) {
        n = FUNC4(L, 2);
        if (n == 0) {
            FUNC12(&value);

        } else {
            for (i = 1; i <= n; i++) {
                FUNC0("header value table index %d, top: %d", (int) i,
                   FUNC3(L));

                FUNC5(L, 2, i);
                p = (u_char *) FUNC1(L, -1, &len);

                /*
                 * we also copy the trailling '\0' char here because nginx
                 * header values must be null-terminated
                 * */

                value.data = FUNC11(r->pool, len + 1);
                if (value.data == NULL) {
                    return FUNC2(L, "no memory");
                }

                FUNC10(value.data, p, len + 1);
                value.len = len;

                rc = FUNC9(r, key, value,
                                                   i == 1 /* override */);

                if (rc == NGX_ERROR) {
                    return FUNC2(L,
                                      "failed to set header %s (error: %d)",
                                      key.data, (int) rc);
                }
            }

            return 0;
        }

    } else {

        /*
         * we also copy the trailling '\0' char here because nginx
         * header values must be null-terminated
         * */

        p = (u_char *) FUNC1(L, 2, &len);
        value.data = FUNC11(r->pool, len + 1);
        if (value.data == NULL) {
            return FUNC2(L, "no memory");
        }

        FUNC10(value.data, p, len + 1);
        value.len = len;
    }

    FUNC0("key: %.*s, value: %.*s",
       (int) key.len, key.data, (int) value.len, value.data);

    rc = FUNC9(r, key, value, 1 /* override */);

    if (rc == NGX_ERROR) {
        return FUNC2(L, "failed to set header %s (error: %d)",
                          key.data, (int) rc);
    }

    return 0;
}