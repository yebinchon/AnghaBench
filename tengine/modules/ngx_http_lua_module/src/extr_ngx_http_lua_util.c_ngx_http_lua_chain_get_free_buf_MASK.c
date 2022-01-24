#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_log_t ;
struct TYPE_12__ {struct TYPE_12__* next; TYPE_2__* buf; } ;
typedef  TYPE_1__ ngx_chain_t ;
typedef  int /*<<< orphan*/  ngx_buf_tag_t ;
struct TYPE_13__ {int temporary; int /*<<< orphan*/  tag; int /*<<< orphan*/ * start; int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; int /*<<< orphan*/ * end; } ;
typedef  TYPE_2__ ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t,size_t,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ngx_chain_t *
FUNC10(ngx_log_t *log, ngx_pool_t *p,
    ngx_chain_t **free, size_t len)
{
    ngx_buf_t    *b;
    ngx_chain_t  *cl;
    u_char       *start, *end;

    const ngx_buf_tag_t  tag = (ngx_buf_tag_t) &ngx_http_lua_module;

    if (*free) {
        cl = *free;
        *free = cl->next;
        cl->next = NULL;

        b = cl->buf;
        start = b->start;
        end = b->end;
        if (start && (size_t) (end - start) >= len) {
            FUNC6(NGX_LOG_DEBUG_HTTP, log, 0,
                           "lua reuse free buf memory %O >= %uz, cl:%p, p:%p",
                           (off_t) (end - start), len, cl, start);

            FUNC7(b, sizeof(ngx_buf_t));

            b->start = start;
            b->pos = start;
            b->last = start;
            b->end = end;
            b->tag = tag;

            if (len) {
                b->temporary = 1;
            }

            return cl;
        }

        FUNC6(NGX_LOG_DEBUG_HTTP, log, 0,
                       "lua reuse free buf chain, but reallocate memory "
                       "because %uz >= %O, cl:%p, p:%p", len,
                       (off_t) (b->end - b->start), cl, b->start);

        if (FUNC2(b) && b->start) {
            FUNC9(p, b->start);
        }

        FUNC7(b, sizeof(ngx_buf_t));

        if (len == 0) {
            return cl;
        }

        b->start = FUNC8(p, len);
        if (b->start == NULL) {
            return NULL;
        }

        b->end = b->start + len;

        FUNC0("buf start: %p", cl->buf->start);

        b->pos = b->start;
        b->last = b->start;
        b->tag = tag;
        b->temporary = 1;

        return cl;
    }

    cl = FUNC1(p);
    if (cl == NULL) {
        return NULL;
    }

    FUNC5(NGX_LOG_DEBUG_HTTP, log, 0,
                   "lua allocate new chainlink and new buf of size %uz, cl:%p",
                   len, cl);

    cl->buf = len ? FUNC4(p, len) : FUNC3(p);
    if (cl->buf == NULL) {
        return NULL;
    }

    FUNC0("buf start: %p", cl->buf->start);

    cl->buf->tag = tag;
    cl->next = NULL;

    return cl;
}