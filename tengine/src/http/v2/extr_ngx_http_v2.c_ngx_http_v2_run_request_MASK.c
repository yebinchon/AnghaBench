#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int content_length_n; int chunked; } ;
struct TYPE_14__ {TYPE_2__ headers_in; TYPE_1__* stream; TYPE_4__* connection; int /*<<< orphan*/  http_state; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_4__ ngx_connection_t ;
struct TYPE_12__ {int skip_data; scalar_t__ in_closed; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_BAD_REQUEST ; 
 int /*<<< orphan*/  NGX_HTTP_PROCESS_REQUEST_STATE ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(ngx_http_request_t *r)
{
    ngx_connection_t  *fc;

    fc = r->connection;

    if (FUNC5(r) != NGX_OK) {
        goto failed;
    }

    if (FUNC4(r) != NGX_OK) {
        goto failed;
    }

    r->http_state = NGX_HTTP_PROCESS_REQUEST_STATE;

    if (FUNC2(r) != NGX_OK) {
        goto failed;
    }

    if (r->headers_in.content_length_n > 0 && r->stream->in_closed) {
        FUNC6(NGX_LOG_INFO, r->connection->log, 0,
                      "client prematurely closed stream");

        r->stream->skip_data = 1;

        FUNC0(r, NGX_HTTP_BAD_REQUEST);
        goto failed;
    }

    if (r->headers_in.content_length_n == -1 && !r->stream->in_closed) {
        r->headers_in.chunked = 1;
    }

    FUNC1(r);

failed:

    FUNC3(fc);
}