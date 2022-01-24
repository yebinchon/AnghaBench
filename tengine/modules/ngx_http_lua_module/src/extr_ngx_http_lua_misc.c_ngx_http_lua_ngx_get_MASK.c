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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {int status; } ;
struct TYPE_9__ {int err_status; scalar_t__ http_version; scalar_t__ header_sent; struct TYPE_9__* main; TYPE_1__ headers_out; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {scalar_t__ header_sent; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_VERSION_9 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC10(lua_State *L)
{
    int                          status;
    ngx_http_request_t          *r;
    u_char                      *p;
    size_t                       len;
    ngx_http_lua_ctx_t          *ctx;

    r = FUNC7(L);
    if (r == NULL) {
        FUNC4(L);
        return 1;
    }

    ctx = FUNC5(r, ngx_http_lua_module);
    if (ctx == NULL) {
        FUNC4(L);
        return 1;
    }

    p = (u_char *) FUNC1(L, -1, &len);

    FUNC0("ngx get %s", *p);

    if (len == sizeof("status") - 1
        && FUNC9(p, "status", sizeof("status") - 1) == 0)
    {
        FUNC6(L, r);

        if (r->err_status) {
            status = r->err_status;

        } else if (r->headers_out.status) {
            status = r->headers_out.status;

        } else if (r->http_version == NGX_HTTP_VERSION_9) {
            status = 9;

        } else {
            status = 0;
        }

        FUNC3(L, status);
        return 1;
    }

    if (len == sizeof("ctx") - 1
        && FUNC9(p, "ctx", sizeof("ctx") - 1) == 0)
    {
        return FUNC8(L);
    }

    if (len == sizeof("is_subrequest") - 1
        && FUNC9(p, "is_subrequest", sizeof("is_subrequest") - 1) == 0)
    {
        FUNC2(L, r != r->main);
        return 1;
    }

    if (len == sizeof("headers_sent") - 1
        && FUNC9(p, "headers_sent", sizeof("headers_sent") - 1) == 0)
    {
        FUNC6(L, r);

        FUNC0("headers sent: %d", r->header_sent || ctx->header_sent);

        FUNC2(L, r->header_sent || ctx->header_sent);
        return 1;
    }

    FUNC0("key %s not matched", *p);

    FUNC4(L);
    return 1;
}