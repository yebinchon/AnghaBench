#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_9__ {int /*<<< orphan*/  pool; TYPE_1__* request_body; scalar_t__ discard_body; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_10__ {TYPE_2__* buf; struct TYPE_10__* next; } ;
typedef  TYPE_4__ ngx_chain_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ last; } ;
struct TYPE_7__ {TYPE_4__* bufs; scalar_t__ temp_file; } ;

/* Variables and functions */
 int NGX_HTTP_LUA_MAX_ARGS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(lua_State *L)
{
    ngx_http_request_t          *r;
    u_char                      *buf;
    int                          retval;
    size_t                       len;
    ngx_chain_t                 *cl;
    u_char                      *p;
    u_char                      *last;
    int                          n;
    int                          max;

    n = FUNC4(L);

    if (n != 0 && n != 1) {
        return FUNC2(L, "expecting 0 or 1 arguments but seen %d", n);
    }

    if (n == 1) {
        max = FUNC1(L, 1);
        FUNC5(L, 1);

    } else {
        max = NGX_HTTP_LUA_MAX_ARGS;
    }

    r = FUNC10(L);
    if (r == NULL) {
        return FUNC2(L, "no request object found");
    }

    FUNC9(L, r);

    if (r->discard_body) {
        FUNC3(L, 0, 0);
        return 1;
    }

    if (r->request_body == NULL) {
        return FUNC2(L, "no request body found; "
                          "maybe you should turn on lua_need_request_body?");
    }

    if (r->request_body->temp_file) {
        FUNC7(L);
        FUNC6(L, "request body in temp file not supported");
        return 2;
    }

    if (r->request_body->bufs == NULL) {
        FUNC3(L, 0, 0);
        return 1;
    }

    /* we copy r->request_body->bufs over to buf to simplify
     * unescaping query arg keys and values */

    len = 0;
    for (cl = r->request_body->bufs; cl; cl = cl->next) {
        len += cl->buf->last - cl->buf->pos;
    }

    FUNC0("post body length: %d", (int) len);

    if (len == 0) {
        FUNC3(L, 0, 0);
        return 1;
    }

    buf = FUNC12(r->pool, len);
    if (buf == NULL) {
        return FUNC2(L, "no memory");
    }

    FUNC3(L, 0, 4);

    p = buf;
    for (cl = r->request_body->bufs; cl; cl = cl->next) {
        p = FUNC8(p, cl->buf->pos, cl->buf->last - cl->buf->pos);
    }

    FUNC0("post body: %.*s", (int) len, buf);

    last = buf + len;

    retval = FUNC11(L, buf, last, max);

    FUNC13(r->pool, buf);

    return retval;
}