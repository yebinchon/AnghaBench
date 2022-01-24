#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_7__ {TYPE_2__* buf; struct TYPE_7__* next; } ;
typedef  TYPE_1__ ngx_chain_t ;
struct TYPE_8__ {int /*<<< orphan*/  pos; int /*<<< orphan*/  last; } ;
typedef  TYPE_2__ ngx_buf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

ngx_buf_t *
FUNC3(ngx_pool_t *pool, ngx_chain_t *in)
{
    ngx_int_t    len;
    ngx_buf_t   *buf;
    ngx_chain_t *cl;

    if (in->next == NULL) {
        return in->buf;
    }

    len = 0;

    for (cl = in; cl; cl = cl->next) {
        len += FUNC0(cl->buf);
    }

    buf = FUNC2(pool, len);

    if (buf == NULL) {
        return NULL;
    }

    for (cl = in; cl; cl = cl->next) {
        buf->last = FUNC1(buf->last, cl->buf->pos, FUNC0(cl->buf));
    }
    return buf;
}