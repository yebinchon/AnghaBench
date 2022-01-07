
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_29__ {TYPE_8__* lock; int main_conf; TYPE_7__* upstream; } ;
typedef TYPE_9__ ngx_http_tfs_timers_data_t ;
struct TYPE_24__ {int code; } ;
struct TYPE_25__ {int version; TYPE_4__ action; } ;
struct TYPE_17__ {int main_conf; TYPE_6__* loc_conf; TYPE_5__ r_ctx; TYPE_12__* finalize_data; int finalize_request; int log; TYPE_11__* data; int * pool; } ;
typedef TYPE_10__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_loc_conf_t ;
struct TYPE_18__ {TYPE_3__* connection; int * pool; } ;
typedef TYPE_11__ ngx_http_request_t ;
struct TYPE_19__ {int log; TYPE_13__* data; } ;
typedef TYPE_12__ ngx_event_t ;
struct TYPE_20__ {TYPE_9__* data; } ;
typedef TYPE_13__ ngx_connection_t ;
struct TYPE_28__ {int ngx_http_tfs_kp_mutex; } ;
struct TYPE_27__ {int rcs_interval; TYPE_2__* rc_ctx; } ;
struct TYPE_26__ {TYPE_7__* upstream; } ;
struct TYPE_23__ {int destroyed; int log; } ;
struct TYPE_22__ {TYPE_1__* sh; } ;
struct TYPE_21__ {int kp_queue; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_TFS_ACTION_KEEPALIVE ;
 int NGX_LOG_DEBUG_EVENT ;
 int ngx_add_timer (TYPE_12__*,int ) ;
 int * ngx_create_pool (int,int ) ;
 int ngx_destroy_pool (int *) ;
 scalar_t__ ngx_http_tfs_init (TYPE_10__*) ;
 int ngx_http_tfs_timers_finalize_request_handler ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 void* ngx_pcalloc (int *,int) ;
 scalar_t__ ngx_queue_empty (int *) ;
 scalar_t__ ngx_shmtx_trylock (int *) ;
 int ngx_shmtx_unlock (int *) ;

__attribute__((used)) static void
ngx_http_tfs_timeout_handler(ngx_event_t *event)
{
    ngx_int_t rc;
    ngx_pool_t *pool;
    ngx_http_tfs_t *t;
    ngx_connection_t *dummy;
    ngx_http_request_t *r;
    ngx_http_tfs_timers_data_t *data;

    dummy = event->data;
    data = dummy->data;
    if (ngx_shmtx_trylock(&data->lock->ngx_http_tfs_kp_mutex)) {

        if (ngx_queue_empty(&data->upstream->rc_ctx->sh->kp_queue)) {
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, event->log, 0,
                           "empty rc keepalive queue");
            ngx_shmtx_unlock(&data->lock->ngx_http_tfs_kp_mutex);
            ngx_add_timer(event, data->upstream->rcs_interval);
            return;
        }

        pool = ngx_create_pool(8192, event->log);
        if (pool == ((void*)0)) {
            ngx_shmtx_unlock(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }


        r = ngx_pcalloc(pool, sizeof(ngx_http_request_t));
        if (r == ((void*)0)) {
            ngx_shmtx_unlock(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }

        r->pool = pool;
        r->connection = ngx_pcalloc(pool, sizeof(ngx_connection_t));
        if (r->connection == ((void*)0)) {
            ngx_destroy_pool(pool);
            ngx_shmtx_unlock(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }
        r->connection->log = event->log;

        r->connection->destroyed = 1;

        t = ngx_pcalloc(pool, sizeof(ngx_http_tfs_t));
        if (t == ((void*)0)) {
            ngx_destroy_pool(pool);
            ngx_shmtx_unlock(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }

        t->pool = pool;
        t->data = r;
        t->log = event->log;
        t->finalize_request = ngx_http_tfs_timers_finalize_request_handler;
        t->finalize_data = event;

        t->r_ctx.action.code = NGX_HTTP_TFS_ACTION_KEEPALIVE;
        t->r_ctx.version = 1;
        t->loc_conf = ngx_pcalloc(pool, sizeof(ngx_http_tfs_loc_conf_t));
        if (t->loc_conf == ((void*)0)) {
            ngx_destroy_pool(pool);
            ngx_shmtx_unlock(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }
        t->loc_conf->upstream = data->upstream;
        t->main_conf = data->main_conf;

        rc = ngx_http_tfs_init(t);
        if (rc == NGX_ERROR) {
            ngx_destroy_pool(pool);
            ngx_shmtx_unlock(&data->lock->ngx_http_tfs_kp_mutex);
            return;
        }

    } else {
        ngx_log_debug0(NGX_LOG_DEBUG_EVENT, event->log, 0,
                       "tfs kp mutex lock failed");
    }
}
