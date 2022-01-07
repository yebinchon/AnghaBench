
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {scalar_t__ sp_fail_count; int data; int sp_curr; int log; TYPE_1__* parent; scalar_t__ sp_ready; } ;
typedef TYPE_2__ ngx_http_tfs_t ;
struct TYPE_6__ {scalar_t__ sp_fail_count; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_http_tfs_finalize_request (int ,TYPE_2__*,int ) ;
 int ngx_http_tfs_send_response (int ,TYPE_2__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_http_tfs_batch_process_next(ngx_http_tfs_t *t)
{
    if (t->sp_ready) {
        if (t->sp_fail_count > 0 || t->parent->sp_fail_count > 0) {
            ngx_log_error(NGX_LOG_ERR, t->log, 0,
                          "(other) sub process failed");

            ngx_http_tfs_finalize_request(t->data, t, NGX_ERROR);
            return NGX_OK;
        }

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, t->log, 0,
                       "segment[%uD] wake up, will output...",
                       t->sp_curr);
        ngx_http_tfs_send_response(t->data, t);
    }

    return NGX_OK;
}
