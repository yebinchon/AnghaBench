#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {scalar_t__ phase_handler; scalar_t__ uri_changes; int /*<<< orphan*/  loc_conf; int /*<<< orphan*/  uri; TYPE_1__* connection; int /*<<< orphan*/  uri_changed; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_14__ {scalar_t__ next; } ;
typedef  TYPE_4__ ngx_http_phase_handler_t ;
struct TYPE_15__ {TYPE_2__* ctx; } ;
typedef  TYPE_5__ ngx_http_core_srv_conf_t ;
struct TYPE_12__ {int /*<<< orphan*/  loc_conf; } ;
struct TYPE_11__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_AGAIN ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC4(ngx_http_request_t *r,
    ngx_http_phase_handler_t *ph)
{
    ngx_http_core_srv_conf_t  *cscf;

    FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "post rewrite phase: %ui", r->phase_handler);

    if (!r->uri_changed) {
        r->phase_handler++;
        return NGX_AGAIN;
    }

    FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "uri changes: %d", r->uri_changes);

    /*
     * gcc before 3.3 compiles the broken code for
     *     if (r->uri_changes-- == 0)
     * if the r->uri_changes is defined as
     *     unsigned  uri_changes:4
     */

    r->uri_changes--;

    if (r->uri_changes == 0) {
        FUNC3(NGX_LOG_ERR, r->connection->log, 0,
                      "rewrite or internal redirection cycle "
                      "while processing \"%V\"", &r->uri);

        FUNC0(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return NGX_OK;
    }

    r->phase_handler = ph->next;

    cscf = FUNC1(r, ngx_http_core_module);
    r->loc_conf = cscf->ctx->loc_conf;

    return NGX_AGAIN;
}