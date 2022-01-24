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
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {TYPE_1__* first; } ;
typedef  TYPE_3__ ngx_http_v2_out_frame_t ;
struct TYPE_14__ {int /*<<< orphan*/  last_sid; TYPE_2__* connection; } ;
typedef  TYPE_4__ ngx_http_v2_connection_t ;
struct TYPE_15__ {int /*<<< orphan*/  last; } ;
typedef  TYPE_5__ ngx_buf_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; } ;
struct TYPE_11__ {TYPE_5__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_V2_GOAWAY_FRAME ; 
 int /*<<< orphan*/  NGX_HTTP_V2_GOAWAY_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_V2_NO_FLAG ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_3__* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_http_v2_connection_t *h2c, ngx_uint_t status)
{
    ngx_buf_t                *buf;
    ngx_http_v2_out_frame_t  *frame;

    FUNC4(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 send GOAWAY frame: last sid %ui, error %ui",
                   h2c->last_sid, status);

    frame = FUNC0(h2c, NGX_HTTP_V2_GOAWAY_SIZE,
                                  NGX_HTTP_V2_GOAWAY_FRAME,
                                  NGX_HTTP_V2_NO_FLAG, 0);
    if (frame == NULL) {
        return NGX_ERROR;
    }

    buf = frame->first->buf;

    buf->last = FUNC2(buf->last, h2c->last_sid);
    buf->last = FUNC3(buf->last, status);

    FUNC1(h2c, frame);

    return NGX_OK;
}