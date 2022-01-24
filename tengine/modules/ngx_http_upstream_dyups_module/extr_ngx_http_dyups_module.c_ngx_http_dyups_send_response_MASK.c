#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ len; scalar_t__ data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_14__ {scalar_t__ content_length_n; scalar_t__ status; } ;
struct TYPE_16__ {int /*<<< orphan*/  pool; TYPE_1__ headers_out; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {int /*<<< orphan*/ * next; TYPE_5__* buf; } ;
typedef  TYPE_4__ ngx_chain_t ;
struct TYPE_18__ {scalar_t__ pos; scalar_t__ last; int last_buf; } ;
typedef  TYPE_5__ ngx_buf_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_FLUSH ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_OK ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ngx_http_request_t *r, ngx_int_t status,
    ngx_str_t *content)
{
    ngx_int_t    rc;
    ngx_buf_t   *b;
    ngx_chain_t  out;

    r->headers_out.status = status;
    r->headers_out.content_length_n = content->len;

    rc = FUNC3(r);
    if (rc == NGX_ERROR || rc > NGX_OK) {
        FUNC1(r, rc);
        return;
    }

    if (content->len == 0) {
        FUNC1(r, FUNC4(r, NGX_HTTP_FLUSH));
        return;
    }

    b = FUNC0(r->pool, content->len);
    if (b == NULL) {
        FUNC1(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return;
    }

    b->pos = content->data;
    b->last = content->data + content->len;
    b->last_buf = 1;

    out.buf = b;
    out.next = NULL;

    FUNC1(r, FUNC2(r, &out));
}