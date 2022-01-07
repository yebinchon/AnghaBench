
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_9__ ;
typedef struct TYPE_46__ TYPE_8__ ;
typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_32__ ;
typedef struct TYPE_39__ TYPE_30__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_14__ ;
typedef struct TYPE_35__ TYPE_12__ ;
typedef struct TYPE_34__ TYPE_11__ ;
typedef struct TYPE_33__ TYPE_10__ ;


typedef int uint32_t ;
typedef size_t ngx_uint_t ;
struct TYPE_46__ {int len; int data; } ;
typedef TYPE_8__ ngx_str_t ;
typedef int ngx_msec_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_47__ {TYPE_7__* connection; int write_event_handler; int read_event_handler; int args; TYPE_2__* main; } ;
typedef TYPE_9__ ngx_http_request_t ;
struct TYPE_36__ {scalar_t__ len; char* data; } ;
struct TYPE_33__ {TYPE_6__* shm_zone; TYPE_14__ forbid_action; } ;
typedef TYPE_10__ ngx_http_limit_req_limit_t ;
struct TYPE_39__ {int value; } ;
struct TYPE_34__ {TYPE_4__* node; TYPE_3__* shpool; TYPE_30__ key; } ;
typedef TYPE_11__ ngx_http_limit_req_ctx_t ;
struct TYPE_37__ {size_t nelts; TYPE_10__* elts; } ;
struct TYPE_35__ {scalar_t__ status_code; scalar_t__ dry_run; int delay_log_level; int limit_log_level; TYPE_1__ limits; int enable; } ;
typedef TYPE_12__ ngx_http_limit_req_conf_t ;
struct TYPE_45__ {TYPE_32__* write; int read; int log; } ;
struct TYPE_43__ {int name; } ;
struct TYPE_44__ {TYPE_5__ shm; TYPE_11__* data; } ;
struct TYPE_42__ {int count; } ;
struct TYPE_41__ {int mutex; } ;
struct TYPE_40__ {int delayed; } ;
struct TYPE_38__ {int limit_req_set; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_32__*,int ) ;
 int ngx_crc32_short (int ,int) ;
 scalar_t__ ngx_handle_read_event (int ,int ) ;
 scalar_t__ ngx_http_complex_value (TYPE_9__*,TYPE_30__*,TYPE_8__*) ;
 int ngx_http_finalize_request (TYPE_9__*,scalar_t__) ;
 TYPE_12__* ngx_http_get_module_loc_conf (TYPE_9__*,int ) ;
 int ngx_http_internal_redirect (TYPE_9__*,TYPE_14__*,int *) ;
 int ngx_http_limit_req_account (TYPE_10__*,size_t,size_t*,TYPE_10__**) ;
 int ngx_http_limit_req_delay ;
 scalar_t__ ngx_http_limit_req_ip_filter (TYPE_9__*,TYPE_12__*) ;
 scalar_t__ ngx_http_limit_req_lookup (TYPE_10__*,int ,TYPE_8__*,size_t*,int) ;
 int ngx_http_limit_req_module ;
 scalar_t__ ngx_http_limit_req_rate_value (TYPE_9__*,TYPE_11__*) ;
 int ngx_http_named_location (TYPE_9__*,TYPE_14__*) ;
 int ngx_http_test_reading ;
 int ngx_log_debug4 (int ,int ,int ,char*,size_t,scalar_t__,size_t,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_limit_req_handler(ngx_http_request_t *r)
{
    uint32_t hash;
    ngx_str_t key;
    ngx_int_t rc;
    ngx_uint_t n, excess;
    ngx_msec_t delay;
    ngx_http_limit_req_ctx_t *ctx;
    ngx_http_limit_req_conf_t *lrcf;
    ngx_http_limit_req_limit_t *limit, *limits;

    if (r->main->limit_req_set) {
        return NGX_DECLINED;
    }

    lrcf = ngx_http_get_module_loc_conf(r, ngx_http_limit_req_module);
    limits = lrcf->limits.elts;
    excess = 0;

    rc = NGX_DECLINED;





    for (n = 0; n < lrcf->limits.nelts; n++) {

        limit = &limits[n];

        ctx = limit->shm_zone->data;







        if (ngx_http_complex_value(r, &ctx->key, &key) != NGX_OK) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        if (key.len == 0) {
            continue;
        }

        if (key.len > 65535) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "the value of the \"%V\" key "
                          "is more than 65535 bytes: \"%V\"",
                          &ctx->key.value, &key);
            continue;
        }

        hash = ngx_crc32_short(key.data, key.len);

        ngx_shmtx_lock(&ctx->shpool->mutex);

        rc = ngx_http_limit_req_lookup(limit, hash, &key, &excess,
                                       (n == lrcf->limits.nelts - 1));

        ngx_shmtx_unlock(&ctx->shpool->mutex);

        ngx_log_debug4(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "limit_req[%ui]: %i %ui.%03ui",
                       n, rc, excess / 1000, excess % 1000);

        if (rc != NGX_AGAIN) {
            break;
        }
    }

    if (rc == NGX_DECLINED) {
        return NGX_DECLINED;
    }

    r->main->limit_req_set = 1;

    if (rc == NGX_BUSY || rc == NGX_ERROR) {

        if (rc == NGX_BUSY) {
            ngx_log_error(lrcf->limit_log_level, r->connection->log, 0,
                        "limiting requests%s, excess: %ui.%03ui by zone \"%V\"",
                        lrcf->dry_run ? ", dry run" : "",
                        excess / 1000, excess % 1000,
                        &limit->shm_zone->shm.name);
        }

        while (n--) {
            ctx = limits[n].shm_zone->data;

            if (ctx->node == ((void*)0)) {
                continue;
            }

            ngx_shmtx_lock(&ctx->shpool->mutex);

            ctx->node->count--;

            ngx_shmtx_unlock(&ctx->shpool->mutex);

            ctx->node = ((void*)0);
        }

        if (lrcf->dry_run) {
            return NGX_DECLINED;
        }
        return lrcf->status_code;

    }



    if (rc == NGX_AGAIN) {
        excess = 0;
    }

    delay = ngx_http_limit_req_account(limits, n, &excess, &limit);

    if (!delay) {
        return NGX_DECLINED;
    }

    ngx_log_error(lrcf->delay_log_level, r->connection->log, 0,
                  "delaying request%s, excess: %ui.%03ui, by zone \"%V\"",
                  lrcf->dry_run ? ", dry run" : "",
                  excess / 1000, excess % 1000, &limit->shm_zone->shm.name);

    if (lrcf->dry_run) {
        return NGX_DECLINED;
    }

    if (ngx_handle_read_event(r->connection->read, 0) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    r->read_event_handler = ngx_http_test_reading;
    r->write_event_handler = ngx_http_limit_req_delay;

    r->connection->write->delayed = 1;
    ngx_add_timer(r->connection->write, delay);

    return NGX_AGAIN;
}
