#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_19__ {int len; scalar_t__ data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_18__ {int content_length_n; scalar_t__ status; } ;
struct TYPE_20__ {int /*<<< orphan*/  pool; TYPE_1__ headers_out; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_21__ {int /*<<< orphan*/ * next; TYPE_5__* buf; } ;
typedef  TYPE_4__ ngx_chain_t ;
struct TYPE_22__ {scalar_t__ pos; scalar_t__ last; int last_buf; } ;
typedef  TYPE_5__ ngx_buf_t ;
struct TYPE_23__ {int nelts; TYPE_2__* elts; } ;
typedef  TYPE_6__ ngx_array_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_FLUSH ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_NOT_ALLOWED ; 
 scalar_t__ NGX_OK ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_http_request_t *r, ngx_array_t *resource)
{
    ngx_str_t   *value, name, rv;
    ngx_int_t    status, rc;
    ngx_buf_t   *b;
    ngx_chain_t  out;

    rc = FUNC2(r);
    if (rc != NGX_OK) {
        return rc;
    }

    if (resource->nelts != 2) {
        FUNC6(&rv, "not support this interface");
        status = NGX_HTTP_NOT_ALLOWED;
        goto finish;
    }

    value = resource->elts;

    if (value[0].len != 8
        || FUNC7(value[0].data, (u_char *) "upstream", 8) != 0)
    {
        FUNC6(&rv, "not support this api");
        status = NGX_HTTP_NOT_ALLOWED;
        goto finish;
    }

    name = value[1];

    status = FUNC1(&name, &rv);

finish:

    r->headers_out.status = status;
    r->headers_out.content_length_n = rv.len;

    rc = FUNC4(r);
    if (rc == NGX_ERROR || rc > NGX_OK) {
        return rc;
    }

    if (rv.len == 0) {
        return FUNC5(r, NGX_HTTP_FLUSH);
    }

    b = FUNC0(r->pool, rv.len);
    if (b == NULL) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    b->pos = rv.data;
    b->last = rv.data + rv.len;
    b->last_buf = 1;

    out.buf = b;
    out.next = NULL;

    return FUNC3(r, &out);
}