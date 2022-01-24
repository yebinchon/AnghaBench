#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_pool_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_29__ {TYPE_8__* lock; int /*<<< orphan*/  main_conf; TYPE_7__* upstream; } ;
typedef  TYPE_9__ ngx_http_tfs_timers_data_t ;
struct TYPE_24__ {int /*<<< orphan*/  code; } ;
struct TYPE_25__ {int version; TYPE_4__ action; } ;
struct TYPE_17__ {int /*<<< orphan*/  main_conf; TYPE_6__* loc_conf; TYPE_5__ r_ctx; TYPE_12__* finalize_data; int /*<<< orphan*/  finalize_request; int /*<<< orphan*/  log; TYPE_11__* data; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_10__ ngx_http_tfs_t ;
typedef  int /*<<< orphan*/  ngx_http_tfs_loc_conf_t ;
struct TYPE_18__ {TYPE_3__* connection; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_11__ ngx_http_request_t ;
struct TYPE_19__ {int /*<<< orphan*/  log; TYPE_13__* data; } ;
typedef  TYPE_12__ ngx_event_t ;
struct TYPE_20__ {TYPE_9__* data; } ;
typedef  TYPE_13__ ngx_connection_t ;
struct TYPE_28__ {int /*<<< orphan*/  ngx_http_tfs_kp_mutex; } ;
struct TYPE_27__ {int /*<<< orphan*/  rcs_interval; TYPE_2__* rc_ctx; } ;
struct TYPE_26__ {TYPE_7__* upstream; } ;
struct TYPE_23__ {int destroyed; int /*<<< orphan*/  log; } ;
struct TYPE_22__ {TYPE_1__* sh; } ;
struct TYPE_21__ {int /*<<< orphan*/  kp_queue; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_ACTION_KEEPALIVE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_10__*) ; 
 int /*<<< orphan*/  ngx_http_tfs_timers_finalize_request_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(ngx_event_t *event)
{
    ngx_int_t                   rc;
    ngx_pool_t                  *pool;
    ngx_http_tfs_t              *t;
    ngx_connection_t            *dummy;
    ngx_http_request_t          *r;
    ngx_http_tfs_timers_data_t  *data;

    dummy = event->data;
    data = dummy->data;
    if (FUNC7(&data->lock->ngx_http_tfs_kp_mutex)) {

        if (FUNC6(&data->upstream->rc_ctx->sh->kp_queue)) {
            FUNC4(NGX_LOG_DEBUG_EVENT, event->log, 0,
                           "empty rc keepalive queue");
            FUNC8(&data->lock->ngx_http_tfs_kp_mutex);
            FUNC0(event, data->upstream->rcs_interval);
            return;
        }

        pool = FUNC1(8192, event->log);
        if (pool == NULL) {
            FUNC8(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }

        /* fake ngx_http_request_t */
        r = FUNC5(pool, sizeof(ngx_http_request_t));
        if (r == NULL) {
            FUNC8(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }

        r->pool = pool;
        r->connection = FUNC5(pool, sizeof(ngx_connection_t));
        if (r->connection == NULL) {
            FUNC2(pool);
            FUNC8(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }
        r->connection->log = event->log;
        /* in order to return from ngx_http_run_posted_requests()  */
        r->connection->destroyed = 1;

        t = FUNC5(pool, sizeof(ngx_http_tfs_t));
        if (t == NULL) {
            FUNC2(pool);
            FUNC8(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }

        t->pool = pool;
        t->data = r;
        t->log = event->log;
        t->finalize_request = ngx_http_tfs_timers_finalize_request_handler;
        t->finalize_data = event;

        t->r_ctx.action.code = NGX_HTTP_TFS_ACTION_KEEPALIVE;
        t->r_ctx.version = 1;
        t->loc_conf = FUNC5(pool, sizeof(ngx_http_tfs_loc_conf_t));
        if (t->loc_conf == NULL) {
            FUNC2(pool);
            FUNC8(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }
        t->loc_conf->upstream = data->upstream;
        t->main_conf = data->main_conf;

        rc = FUNC3(t);
        if (rc == NGX_ERROR) {
            FUNC2(pool);
            FUNC8(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }

    } else {
        FUNC4(NGX_LOG_DEBUG_EVENT, event->log, 0,
                       "tfs kp mutex lock failed");
    }
}