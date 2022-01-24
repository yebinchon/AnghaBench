#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {int content_length_n; } ;
struct TYPE_17__ {TYPE_13__* out; int /*<<< orphan*/  pool; TYPE_1__ headers_out; TYPE_4__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_18__ {size_t subrequest_output_buffer_size; } ;
typedef  TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_19__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_4__ ngx_connection_t ;
struct TYPE_20__ {TYPE_12__* buf; struct TYPE_20__* next; } ;
typedef  TYPE_5__ ngx_chain_t ;
struct TYPE_21__ {int last_buf; scalar_t__ last; scalar_t__ end; } ;
typedef  TYPE_6__ ngx_buf_t ;
struct TYPE_15__ {TYPE_6__* buf; int /*<<< orphan*/ * next; } ;
struct TYPE_14__ {size_t last; size_t pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_13__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_12__*) ; 
 scalar_t__ FUNC2 (scalar_t__,size_t,size_t) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_http_request_t *r, ngx_chain_t *in)
{
    size_t                     len;
    ngx_buf_t                 *b;
    ngx_connection_t          *c;
    ngx_http_core_loc_conf_t  *clcf;

    c = r->connection;

    FUNC5(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http postpone filter in memory");

    if (r->out == NULL) {
        clcf = FUNC4(r, ngx_http_core_module);

        if (r->headers_out.content_length_n != -1) {
            len = r->headers_out.content_length_n;

            if (len > clcf->subrequest_output_buffer_size) {
                FUNC7(NGX_LOG_ERR, c->log, 0,
                              "too big subrequest response: %uz", len);
                return NGX_ERROR;
            }

        } else {
            len = clcf->subrequest_output_buffer_size;
        }

        b = FUNC3(r->pool, len);
        if (b == NULL) {
            return NGX_ERROR;
        }

        b->last_buf = 1;

        r->out = FUNC0(r->pool);
        if (r->out == NULL) {
            return NGX_ERROR;
        }

        r->out->buf = b;
        r->out->next = NULL;
    }

    b = r->out->buf;

    for ( /* void */ ; in; in = in->next) {

        if (FUNC1(in->buf)) {
            continue;
        }

        len = in->buf->last - in->buf->pos;

        if (len > (size_t) (b->end - b->last)) {
            FUNC7(NGX_LOG_ERR, c->log, 0,
                          "too big subrequest response");
            return NGX_ERROR;
        }

        FUNC6(NGX_LOG_DEBUG_HTTP, c->log, 0,
                       "http postpone filter in memory %uz bytes", len);

        b->last = FUNC2(b->last, in->buf->pos, len);
        in->buf->pos = in->buf->last;
    }

    return NGX_OK;
}