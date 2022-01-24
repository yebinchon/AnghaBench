#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_20__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {scalar_t__ status_n; TYPE_7__ status_line; } ;
struct TYPE_17__ {scalar_t__ (* process_header ) (TYPE_6__*) ;TYPE_3__ headers_in; TYPE_1__* state; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_4__ ngx_http_upstream_t ;
struct TYPE_18__ {scalar_t__ code; size_t end; size_t start; } ;
typedef  TYPE_5__ ngx_http_status_t ;
struct TYPE_19__ {TYPE_2__* connection; int /*<<< orphan*/  pool; TYPE_4__* upstream; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_15__ {int /*<<< orphan*/  log; } ;
struct TYPE_14__ {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 TYPE_5__* FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_http_scgi_module ; 
 scalar_t__ FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r)
{
    size_t                len;
    ngx_int_t             rc;
    ngx_http_status_t    *status;
    ngx_http_upstream_t  *u;

    status = FUNC0(r, ngx_http_scgi_module);

    if (status == NULL) {
        return NGX_ERROR;
    }

    u = r->upstream;

    rc = FUNC1(r, &u->buffer, status);

    if (rc == NGX_AGAIN) {
        return rc;
    }

    if (rc == NGX_ERROR) {
        u->process_header = ngx_http_scgi_process_header;
        return FUNC2(r);
    }

    if (u->state && u->state->status == 0) {
        u->state->status = status->code;
    }

    u->headers_in.status_n = status->code;

    len = status->end - status->start;
    u->headers_in.status_line.len = len;

    u->headers_in.status_line.data = FUNC5(r->pool, len);
    if (u->headers_in.status_line.data == NULL) {
        return NGX_ERROR;
    }

    FUNC4(u->headers_in.status_line.data, status->start, len);

    FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http scgi status %ui \"%V\"",
                   u->headers_in.status_n, &u->headers_in.status_line);

    u->process_header = ngx_http_scgi_process_header;

    return FUNC2(r);
}