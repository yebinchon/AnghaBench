#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_18__ {size_t len; char* data; } ;
struct TYPE_15__ {TYPE_6__ value; int /*<<< orphan*/  key; scalar_t__ hash; } ;
typedef  TYPE_3__ ngx_table_elt_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_14__ {TYPE_3__* location; scalar_t__ status; int /*<<< orphan*/  headers; } ;
struct TYPE_16__ {TYPE_2__ headers_out; TYPE_1__* connection; int /*<<< orphan*/  pool; scalar_t__ header_sent; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_17__ {int exited; scalar_t__ exit_code; scalar_t__ header_sent; } ;
typedef  TYPE_5__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 scalar_t__ NGX_HTTP_MOVED_PERMANENTLY ; 
 scalar_t__ NGX_HTTP_MOVED_TEMPORARILY ; 
 scalar_t__ NGX_HTTP_PERMANENT_REDIRECT ; 
 scalar_t__ NGX_HTTP_SEE_OTHER ; 
 scalar_t__ NGX_HTTP_TEMPORARY_REDIRECT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 TYPE_5__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_http_lua_location_hash ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,size_t) ; 
 char* FUNC14 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC16(lua_State *L)
{
    ngx_http_lua_ctx_t          *ctx;
    ngx_int_t                    rc;
    int                          n;
    u_char                      *p;
    u_char                      *uri;
    size_t                       len;
    ngx_table_elt_t             *h;
    ngx_http_request_t          *r;

    n = FUNC4(L);

    if (n != 1 && n != 2) {
        return FUNC3(L, "expecting one or two arguments");
    }

    p = (u_char *) FUNC1(L, 1, &len);

    if (n == 2) {
        rc = (ngx_int_t) FUNC2(L, 2);

        if (rc != NGX_HTTP_MOVED_TEMPORARILY
            && rc != NGX_HTTP_MOVED_PERMANENTLY
            && rc != NGX_HTTP_SEE_OTHER
            && rc != NGX_HTTP_PERMANENT_REDIRECT
            && rc != NGX_HTTP_TEMPORARY_REDIRECT)
        {
            return FUNC3(L, "only ngx.HTTP_MOVED_TEMPORARILY, "
                              "ngx.HTTP_MOVED_PERMANENTLY, "
                              "ngx.HTTP_PERMANENT_REDIRECT, "
                              "ngx.HTTP_SEE_OTHER, and "
                              "ngx.HTTP_TEMPORARY_REDIRECT are allowed");
        }

    } else {
        rc = NGX_HTTP_MOVED_TEMPORARILY;
    }

    r = FUNC10(L);
    if (r == NULL) {
        return FUNC3(L, "no request object found");
    }

    ctx = FUNC7(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC3(L, "no request ctx found");
    }

    FUNC8(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    FUNC9(L, ctx);

    if (r->header_sent || ctx->header_sent) {
        return FUNC3(L, "attempt to call ngx.redirect after sending out "
                          "the headers");
    }

    uri = FUNC14(r->pool, len);
    if (uri == NULL) {
        return FUNC3(L, "no memory");
    }

    FUNC13(uri, p, len);

    h = FUNC11(&r->headers_out.headers);
    if (h == NULL) {
        return FUNC3(L, "no memory");
    }

    h->hash = ngx_http_lua_location_hash;

#if 0
    dd("location hash: %lu == %lu",
       (unsigned long) h->hash,
       (unsigned long) ngx_hash_key_lc((u_char *) "Location",
                                       sizeof("Location") - 1));
#endif

    h->value.len = len;
    h->value.data = uri;
    FUNC15(&h->key, "Location");

    r->headers_out.status = rc;

    ctx->exit_code = rc;
    ctx->exited = 1;

    FUNC12(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua redirect to \"%V\" with code %i",
                   &h->value, ctx->exit_code);

    if (len && uri[0] != '/') {
        r->headers_out.location = h;
    }

    /*
     * we do not set r->headers_out.location here to avoid the handling
     * the local redirects without a host name by ngx_http_header_filter()
     */

    return FUNC5(L, 0);
}