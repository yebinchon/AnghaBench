#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_19__ ;
typedef  struct TYPE_36__   TYPE_14__ ;
typedef  struct TYPE_35__   TYPE_13__ ;
typedef  struct TYPE_34__   TYPE_12__ ;
typedef  struct TYPE_33__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  TYPE_10__* time_t ;
typedef  int ngx_uint_t ;
struct TYPE_33__ {int len; char* data; } ;
typedef  TYPE_10__ ngx_str_t ;
typedef  int ngx_int_t ;
struct TYPE_44__ {int /*<<< orphan*/  len; } ;
struct TYPE_46__ {scalar_t__ status; int content_length_n; TYPE_19__* accept_ranges; int /*<<< orphan*/  headers; TYPE_7__ status_line; int /*<<< orphan*/  content_offset; TYPE_10__* last_modified_time; TYPE_5__* etag; } ;
struct TYPE_41__ {TYPE_3__* if_range; TYPE_2__* range; } ;
struct TYPE_34__ {scalar_t__ http_version; TYPE_9__ headers_out; scalar_t__ single_range; int /*<<< orphan*/  pool; TYPE_6__* connection; TYPE_4__ headers_in; int /*<<< orphan*/  allow_ranges; int /*<<< orphan*/  subrequest_ranges; struct TYPE_34__* main; } ;
typedef  TYPE_12__ ngx_http_request_t ;
struct TYPE_45__ {int nelts; } ;
struct TYPE_35__ {TYPE_8__ ranges; int /*<<< orphan*/  offset; } ;
typedef  TYPE_13__ ngx_http_range_filter_ctx_t ;
struct TYPE_36__ {int max_ranges; } ;
typedef  TYPE_14__ ngx_http_core_loc_conf_t ;
struct TYPE_43__ {int /*<<< orphan*/  log; } ;
struct TYPE_42__ {TYPE_10__ value; } ;
struct TYPE_40__ {TYPE_10__ value; } ;
struct TYPE_38__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_39__ {TYPE_1__ value; } ;
struct TYPE_37__ {int hash; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
#define  NGX_ERROR 130 
 scalar_t__ NGX_HTTP_OK ; 
 scalar_t__ NGX_HTTP_PARTIAL_CONTENT ; 
#define  NGX_HTTP_RANGE_NOT_SATISFIABLE 129 
 scalar_t__ NGX_HTTP_VERSION_10 ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
#define  NGX_OK 128 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_14__* FUNC0 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_12__*) ; 
 int /*<<< orphan*/  ngx_http_range_body_filter_module ; 
 int FUNC2 (TYPE_12__*,TYPE_13__*) ; 
 int FUNC3 (TYPE_12__*) ; 
 int FUNC4 (TYPE_12__*,TYPE_13__*,int) ; 
 int FUNC5 (TYPE_12__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__*,TYPE_13__*,int /*<<< orphan*/ ) ; 
 TYPE_19__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_10__*,TYPE_10__*) ; 
 TYPE_10__* FUNC9 (char*,int) ; 
 TYPE_13__* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC14(ngx_http_request_t *r)
{
    time_t                        if_range_time;
    ngx_str_t                    *if_range, *etag;
    ngx_uint_t                    ranges;
    ngx_http_core_loc_conf_t     *clcf;
    ngx_http_range_filter_ctx_t  *ctx;

    if (r->http_version < NGX_HTTP_VERSION_10
        || r->headers_out.status != NGX_HTTP_OK
        || (r != r->main && !r->subrequest_ranges)
        || r->headers_out.content_length_n == -1
        || !r->allow_ranges)
    {
        return FUNC1(r);
    }

    clcf = FUNC0(r, ngx_http_core_module);

    if (clcf->max_ranges == 0) {
        return FUNC1(r);
    }

    if (r->headers_in.range == NULL
        || r->headers_in.range->value.len < 7
        || FUNC12(r->headers_in.range->value.data,
                           (u_char *) "bytes=", 6)
           != 0)
    {
        goto next_filter;
    }

    if (r->headers_in.if_range) {

        if_range = &r->headers_in.if_range->value;

        if (if_range->len >= 2 && if_range->data[if_range->len - 1] == '"') {

            if (r->headers_out.etag == NULL) {
                goto next_filter;
            }

            etag = &r->headers_out.etag->value;

            FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "http ir:%V etag:%V", if_range, etag);

            if (if_range->len != etag->len
                || FUNC13(if_range->data, etag->data, etag->len) != 0)
            {
                goto next_filter;
            }

            goto parse;
        }

        if (r->headers_out.last_modified_time == (time_t) -1) {
            goto next_filter;
        }

        if_range_time = FUNC9(if_range->data, if_range->len);

        FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http ir:%T lm:%T",
                       if_range_time, r->headers_out.last_modified_time);

        if (if_range_time != r->headers_out.last_modified_time) {
            goto next_filter;
        }
    }

parse:

    ctx = FUNC10(r->pool, sizeof(ngx_http_range_filter_ctx_t));
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    ctx->offset = r->headers_out.content_offset;

    ranges = r->single_range ? 1 : clcf->max_ranges;

    switch (FUNC4(r, ctx, ranges)) {

    case NGX_OK:
        FUNC6(r, ctx, ngx_http_range_body_filter_module);

        r->headers_out.status = NGX_HTTP_PARTIAL_CONTENT;
        r->headers_out.status_line.len = 0;

        if (ctx->ranges.nelts == 1) {
            return FUNC5(r, ctx);
        }

        return FUNC2(r, ctx);

    case NGX_HTTP_RANGE_NOT_SATISFIABLE:
        return FUNC3(r);

    case NGX_ERROR:
        return NGX_ERROR;

    default: /* NGX_DECLINED */
        break;
    }

next_filter:

    r->headers_out.accept_ranges = FUNC7(&r->headers_out.headers);
    if (r->headers_out.accept_ranges == NULL) {
        return NGX_ERROR;
    }

    r->headers_out.accept_ranges->hash = 1;
    FUNC11(&r->headers_out.accept_ranges->key, "Accept-Ranges");
    FUNC11(&r->headers_out.accept_ranges->value, "bytes");

    return FUNC1(r);
}