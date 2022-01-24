#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_21__ {int skip_data; int in_closed; TYPE_7__* preread; TYPE_6__* request; } ;
typedef  TYPE_3__ ngx_http_v2_stream_t ;
struct TYPE_22__ {int /*<<< orphan*/  preread_size; } ;
typedef  TYPE_4__ ngx_http_v2_srv_conf_t ;
struct TYPE_20__ {size_t length; int flags; scalar_t__ padding; TYPE_3__* stream; } ;
struct TYPE_23__ {TYPE_2__ state; TYPE_1__* connection; } ;
typedef  TYPE_5__ ngx_http_v2_connection_t ;
struct TYPE_24__ {int /*<<< orphan*/  pool; scalar_t__ request_body; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_25__ {scalar_t__ last; scalar_t__ end; } ;
typedef  TYPE_7__ ngx_buf_t ;
struct TYPE_19__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_HTTP_V2_END_STREAM_FLAG ; 
 int /*<<< orphan*/  NGX_HTTP_V2_INTERNAL_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,scalar_t__) ; 
 TYPE_4__* FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_v2_module ; 
 scalar_t__ FUNC5 (TYPE_6__*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u_char *
FUNC11(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    size_t                   size;
    ngx_buf_t               *buf;
    ngx_int_t                rc;
    ngx_http_request_t      *r;
    ngx_http_v2_stream_t    *stream;
    ngx_http_v2_srv_conf_t  *h2scf;

    stream = h2c->state.stream;

    if (stream == NULL) {
        return FUNC8(h2c, pos, end);
    }

    if (stream->skip_data) {
        FUNC9(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                       "skipping http2 DATA frame");

        return FUNC8(h2c, pos, end);
    }

    size = end - pos;

    if (size >= h2c->state.length) {
        size = h2c->state.length;
        stream->in_closed = h2c->state.flags & NGX_HTTP_V2_END_STREAM_FLAG;
    }

    r = stream->request;

    if (r->request_body) {
        rc = FUNC5(r, pos, size, stream->in_closed);

        if (rc != NGX_OK) {
            stream->skip_data = 1;
            FUNC2(r, rc);
        }

    } else if (size) {
        buf = stream->preread;

        if (buf == NULL) {
            h2scf = FUNC3(r, ngx_http_v2_module);

            buf = FUNC1(r->pool, h2scf->preread_size);
            if (buf == NULL) {
                return FUNC4(h2c,
                                                    NGX_HTTP_V2_INTERNAL_ERROR);
            }

            stream->preread = buf;
        }

        if (size > (size_t) (buf->end - buf->last)) {
            FUNC10(NGX_LOG_ALERT, h2c->connection->log, 0,
                          "http2 preread buffer overflow");
            return FUNC4(h2c,
                                                NGX_HTTP_V2_INTERNAL_ERROR);
        }

        buf->last = FUNC0(buf->last, pos, size);
    }

    pos += size;
    h2c->state.length -= size;

    if (h2c->state.length) {
        return FUNC7(h2c, pos, end,
                                      ngx_http_v2_state_read_data);
    }

    if (h2c->state.padding) {
        return FUNC8(h2c, pos, end);
    }

    return FUNC6(h2c, pos, end);
}