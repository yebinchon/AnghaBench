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
struct TYPE_7__ {size_t ctx_index; } ;
typedef  TYPE_1__ ngx_module_t ;
typedef  int ngx_int_t ;
struct TYPE_8__ {int filter_finalize; void** ctx; } ;
typedef  TYPE_2__ ngx_http_request_t ;

/* Variables and functions */
#define  NGX_DONE 129 
 int NGX_ERROR ; 
#define  NGX_OK 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int ngx_http_max_module ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (void**,int) ; 

ngx_int_t
FUNC3(ngx_http_request_t *r, ngx_module_t *m,
    ngx_int_t error)
{
    void       *ctx;
    ngx_int_t   rc;

    FUNC0(r);

    ctx = NULL;

    if (m) {
        ctx = r->ctx[m->ctx_index];
    }

    /* clear the modules contexts */
    FUNC2(r->ctx, sizeof(void *) * ngx_http_max_module);

    if (m) {
        r->ctx[m->ctx_index] = ctx;
    }

    r->filter_finalize = 1;

    rc = FUNC1(r, error);

    /* NGX_ERROR resets any pending data */

    switch (rc) {

    case NGX_OK:
    case NGX_DONE:
        return NGX_ERROR;

    default:
        return rc;
    }
}