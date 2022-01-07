
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_19__ {TYPE_1__* connection; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_20__ {TYPE_3__* shpool; } ;
typedef TYPE_8__ ngx_http_file_cache_t ;
struct TYPE_16__ {scalar_t__ len; int data; } ;
struct TYPE_17__ {TYPE_4__ name; int log; } ;
struct TYPE_21__ {int secondary; int variant; int key; TYPE_6__* buf; scalar_t__ body_start; TYPE_5__ file; TYPE_2__* node; TYPE_8__* file_cache; } ;
typedef TYPE_9__ ngx_http_cache_t ;
struct TYPE_18__ {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_15__ {int mutex; } ;
struct TYPE_14__ {int count; } ;
struct TYPE_13__ {int log; } ;


 int NGX_DECLINED ;
 int NGX_HTTP_CACHE_KEY_LEN ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_file_cache_open (TYPE_7__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 int ngx_memcpy (int ,int ,int ) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_file_cache_reopen(ngx_http_request_t *r, ngx_http_cache_t *c)
{
    ngx_http_file_cache_t *cache;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->file.log, 0,
                   "http file cache reopen");

    if (c->secondary) {
        ngx_log_error(NGX_LOG_CRIT, r->connection->log, 0,
                      "cache file \"%s\" has incorrect vary hash",
                      c->file.name.data);
        return NGX_DECLINED;
    }

    cache = c->file_cache;

    ngx_shmtx_lock(&cache->shpool->mutex);

    c->node->count--;
    c->node = ((void*)0);

    ngx_shmtx_unlock(&cache->shpool->mutex);

    c->secondary = 1;
    c->file.name.len = 0;
    c->body_start = c->buf->end - c->buf->start;

    ngx_memcpy(c->key, c->variant, NGX_HTTP_CACHE_KEY_LEN);

    return ngx_http_file_cache_open(r);
}
