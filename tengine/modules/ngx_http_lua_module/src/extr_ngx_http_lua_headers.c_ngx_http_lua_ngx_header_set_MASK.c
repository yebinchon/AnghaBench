#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_18__ {char* data; size_t len; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_19__ {int /*<<< orphan*/  pool; TYPE_1__* connection; scalar_t__ header_sent; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ transform_underscores_in_resp_headers; } ;
typedef  TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_21__ {int headers_set; scalar_t__ header_sent; } ;
typedef  TYPE_5__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_17__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ LUA_TNIL ; 
 scalar_t__ LUA_TTABLE ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC10 (TYPE_3__*,TYPE_5__*,TYPE_2__,TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 
 void* FUNC13 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC15(lua_State *L)
{
    ngx_http_request_t          *r;
    u_char                      *p;
    ngx_str_t                    key;
    ngx_str_t                    value;
    ngx_uint_t                   i;
    size_t                       len;
    ngx_http_lua_ctx_t          *ctx;
    ngx_int_t                    rc;
    ngx_uint_t                   n;
    ngx_http_lua_loc_conf_t     *llcf;

    r = FUNC9(L);
    if (r == NULL) {
        return FUNC2(L, "no request object found");
    }

    ctx = FUNC6(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC2(L, "no ctx");
    }

    FUNC8(L, r);

    if (r->header_sent || ctx->header_sent) {
        FUNC11(NGX_LOG_ERR, r->connection->log, 0, "attempt to "
                      "set ngx.header.HEADER after sending out "
                      "response headers");
        return 0;
    }

    /* we skip the first argument that is the table */
    p = (u_char *) FUNC1(L, 2, &len);

    FUNC0("key: %.*s, len %d", (int) len, p, (int) len);

    key.data = FUNC13(r->pool, len + 1);
    if (key.data == NULL) {
        return FUNC2(L, "no memory");
    }

    FUNC12(key.data, p, len);
    key.data[len] = '\0';
    key.len = len;

    llcf = FUNC7(r, ngx_http_lua_module);

    if (llcf->transform_underscores_in_resp_headers) {
        /* replace "_" with "-" */
        p = key.data;
        for (i = 0; i < len; i++) {
            if (p[i] == '_') {
                p[i] = '-';
            }
        }
    }

    ctx->headers_set = 1;

    if (FUNC5(L, 3) == LUA_TNIL) {
        FUNC14(&value);

    } else if (FUNC5(L, 3) == LUA_TTABLE) {
        n = FUNC3(L, 3);
        if (n == 0) {
            FUNC14(&value);

        } else {
            for (i = 1; i <= n; i++) {
                FUNC0("header value table index %d", (int) i);

                FUNC4(L, 3, i);
                p = (u_char *) FUNC1(L, -1, &len);

                value.data = FUNC13(r->pool, len);
                if (value.data == NULL) {
                    return FUNC2(L, "no memory");
                }

                FUNC12(value.data, p, len);
                value.len = len;

                rc = FUNC10(r, ctx, key, value,
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
        p = (u_char *) FUNC1(L, 3, &len);
        value.data = FUNC13(r->pool, len);
        if (value.data == NULL) {
            return FUNC2(L, "no memory");
        }

        FUNC12(value.data, p, len);
        value.len = len;
    }

    FUNC0("key: %.*s, value: %.*s",
       (int) key.len, key.data, (int) value.len, value.data);

    rc = FUNC10(r, ctx, key, value, 1 /* override */);

    if (rc == NGX_ERROR) {
        return FUNC2(L, "failed to set header %s (error: %d)",
                          key.data, (int) rc);
    }

    return 0;
}