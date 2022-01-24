#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_17__ {scalar_t__ len; } ;
struct TYPE_16__ {scalar_t__ len; } ;
struct TYPE_19__ {scalar_t__ status; TYPE_4__* content_encoding; TYPE_3__ content_type; TYPE_2__ status_line; } ;
struct TYPE_15__ {scalar_t__ if_none_match; scalar_t__ if_modified_since; scalar_t__ if_match; scalar_t__ if_unmodified_since; } ;
struct TYPE_20__ {TYPE_5__ headers_out; TYPE_1__ headers_in; scalar_t__ disable_not_modified; struct TYPE_20__* main; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_18__ {scalar_t__ hash; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_NOT_MODIFIED ; 
 scalar_t__ NGX_HTTP_OK ; 
 int /*<<< orphan*/  NGX_HTTP_PRECONDITION_FAILED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_http_request_t *r)
{
    if (r->headers_out.status != NGX_HTTP_OK
        || r != r->main
        || r->disable_not_modified)
    {
        return FUNC3(r);
    }

    if (r->headers_in.if_unmodified_since
        && !FUNC6(r))
    {
        return FUNC2(r, NULL,
                                                NGX_HTTP_PRECONDITION_FAILED);
    }

    if (r->headers_in.if_match
        && !FUNC4(r, r->headers_in.if_match, 0))
    {
        return FUNC2(r, NULL,
                                                NGX_HTTP_PRECONDITION_FAILED);
    }

    if (r->headers_in.if_modified_since || r->headers_in.if_none_match) {

        if (r->headers_in.if_modified_since
            && FUNC5(r))
        {
            return FUNC3(r);
        }

        if (r->headers_in.if_none_match
            && !FUNC4(r, r->headers_in.if_none_match, 1))
        {
            return FUNC3(r);
        }

        /* not modified */

        r->headers_out.status = NGX_HTTP_NOT_MODIFIED;
        r->headers_out.status_line.len = 0;
        r->headers_out.content_type.len = 0;
        FUNC1(r);
        FUNC0(r);

        if (r->headers_out.content_encoding) {
            r->headers_out.content_encoding->hash = 0;
            r->headers_out.content_encoding = NULL;
        }

        return FUNC3(r);
    }

    return FUNC3(r);
}