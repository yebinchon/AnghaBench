#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_15__ {int post_action; scalar_t__ uri_changes; int header_only; int /*<<< orphan*/  read_event_handler; int /*<<< orphan*/  http_version; TYPE_2__* main; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {char* data; } ;
struct TYPE_16__ {TYPE_5__ post_action; } ;
typedef  TYPE_4__ ngx_http_core_loc_conf_t ;
struct TYPE_14__ {int /*<<< orphan*/  count; } ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_HTTP_VERSION_9 ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ngx_http_block_reading ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_4__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_5__*) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_http_request_t *r)
{
    ngx_http_core_loc_conf_t  *clcf;

    clcf = FUNC0(r, ngx_http_core_module);

    if (clcf->post_action.data == NULL) {
        return NGX_DECLINED;
    }

    if (r->post_action && r->uri_changes == 0) {
        return NGX_DECLINED;
    }

    FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "post action: \"%V\"", &clcf->post_action);

    r->main->count--;

    r->http_version = NGX_HTTP_VERSION_9;
    r->header_only = 1;
    r->post_action = 1;

    r->read_event_handler = ngx_http_block_reading;

    if (clcf->post_action.data[0] == '/') {
        FUNC1(r, &clcf->post_action, NULL);

    } else {
        FUNC2(r, &clcf->post_action);
    }

    return NGX_OK;
}