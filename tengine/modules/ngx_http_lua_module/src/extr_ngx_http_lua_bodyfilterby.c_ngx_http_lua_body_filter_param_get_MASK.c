#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_5__ {TYPE_2__* body_filter_chain; } ;
typedef  TYPE_1__ ngx_http_lua_main_conf_t ;
struct TYPE_6__ {TYPE_3__* buf; struct TYPE_6__* next; } ;
typedef  TYPE_2__ ngx_chain_t ;
struct TYPE_7__ {size_t pos; size_t last; scalar_t__ last_in_chain; scalar_t__ last_buf; } ;
typedef  TYPE_3__ ngx_buf_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t,size_t) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

int
FUNC9(lua_State *L, ngx_http_request_t *r)
{
    u_char              *data, *p;
    size_t               size;
    ngx_chain_t         *cl;
    ngx_buf_t           *b;
    int                  idx;
    ngx_chain_t         *in;

    ngx_http_lua_main_conf_t    *lmcf;

    idx = FUNC1(L, 2);

    FUNC0("index: %d", idx);

    if (idx != 1 && idx != 2) {
        FUNC6(L);
        return 1;
    }

    lmcf = FUNC8(r, ngx_http_lua_module);
    in = lmcf->body_filter_chain;

    if (idx == 2) {
        /* asking for the eof argument */

        for (cl = in; cl; cl = cl->next) {
            if (cl->buf->last_buf || cl->buf->last_in_chain) {
                FUNC3(L, 1);
                return 1;
            }
        }

        FUNC3(L, 0);
        return 1;
    }

    /* idx == 1 */

    size = 0;

    if (in == NULL) {
        /* being a cleared chain on the Lua land */
        FUNC4(L, "");
        return 1;
    }

    if (in->next == NULL) {

        FUNC0("seen only single buffer");

        b = in->buf;
        FUNC5(L, (char *) b->pos, b->last - b->pos);
        return 1;
    }

    FUNC0("seen multiple buffers");

    for (cl = in; cl; cl = cl->next) {
        b = cl->buf;

        size += b->last - b->pos;

        if (b->last_buf || b->last_in_chain) {
            break;
        }
    }

    data = (u_char *) FUNC2(L, size);

    for (p = data, cl = in; cl; cl = cl->next) {
        b = cl->buf;
        p = FUNC7(p, b->pos, b->last - b->pos);

        if (b->last_buf || b->last_in_chain) {
            break;
        }
    }

    FUNC5(L, (char *) data, size);
    return 1;
}