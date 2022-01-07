
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int ngx_msec_t ;
typedef scalar_t__ ngx_msec_int_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {TYPE_4__* main; TYPE_3__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_17__ {TYPE_2__* shpool; } ;
typedef TYPE_6__ ngx_http_file_cache_t ;
struct TYPE_11__ {int log; TYPE_5__* data; int handler; } ;
struct TYPE_18__ {int lock_age; int updating; int lock_time; scalar_t__ wait_time; scalar_t__ lock_timeout; int waiting; TYPE_10__ wait_event; TYPE_1__* node; TYPE_6__* file_cache; int lock; } ;
typedef TYPE_7__ ngx_http_cache_t ;
struct TYPE_15__ {int blocked; } ;
struct TYPE_14__ {int log; } ;
struct TYPE_13__ {int mutex; } ;
struct TYPE_12__ {int lock_time; int updating; } ;


 int NGX_AGAIN ;
 int NGX_DECLINED ;
 int NGX_HTTP_CACHE_SCARCE ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_add_timer (TYPE_10__*,int) ;
 int ngx_current_msec ;
 int ngx_http_file_cache_lock_wait_handler ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,scalar_t__) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_file_cache_lock(ngx_http_request_t *r, ngx_http_cache_t *c)
{
    ngx_msec_t now, timer;
    ngx_http_file_cache_t *cache;

    if (!c->lock) {
        return NGX_DECLINED;
    }

    now = ngx_current_msec;

    cache = c->file_cache;

    ngx_shmtx_lock(&cache->shpool->mutex);

    timer = c->node->lock_time - now;

    if (!c->node->updating || (ngx_msec_int_t) timer <= 0) {
        c->node->updating = 1;
        c->node->lock_time = now + c->lock_age;
        c->updating = 1;
        c->lock_time = c->node->lock_time;
    }

    ngx_shmtx_unlock(&cache->shpool->mutex);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http file cache lock u:%d wt:%M",
                   c->updating, c->wait_time);

    if (c->updating) {
        return NGX_DECLINED;
    }

    if (c->lock_timeout == 0) {
        return NGX_HTTP_CACHE_SCARCE;
    }

    c->waiting = 1;

    if (c->wait_time == 0) {
        c->wait_time = now + c->lock_timeout;

        c->wait_event.handler = ngx_http_file_cache_lock_wait_handler;
        c->wait_event.data = r;
        c->wait_event.log = r->connection->log;
    }

    timer = c->wait_time - now;

    ngx_add_timer(&c->wait_event, (timer > 500) ? 500 : timer);

    r->main->blocked++;

    return NGX_AGAIN;
}
