#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ ngx_chain_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

ngx_int_t
FUNC3(ngx_pool_t *pool, ngx_chain_t **chain, ngx_chain_t *in)
{
    ngx_buf_t    *b;
    ngx_chain_t  *cl, **ll;

    ll = chain;
    for (cl = *chain; cl; cl = cl->next) {
        ll = &cl->next;
    }

    while (in) {
        b = FUNC0(pool);
        if (b == NULL) {
            return NGX_ERROR;
        }
        FUNC2(b, in->buf, sizeof(ngx_buf_t));
        cl = FUNC1(pool);
        if (cl == NULL) {
            return NGX_ERROR;
        }
        cl->buf = b;
        *ll = cl;
        ll = &cl->next;
        in = in->next;
    }

    *ll = NULL;

    return NGX_OK;
}