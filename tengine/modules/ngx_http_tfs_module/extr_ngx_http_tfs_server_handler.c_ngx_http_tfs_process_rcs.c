
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {scalar_t__ code; } ;
struct TYPE_19__ {TYPE_4__ action; } ;
struct TYPE_20__ {scalar_t__ curr_ka_queue; TYPE_5__ r_ctx; TYPE_7__* rc_info_node; TYPE_2__* loc_conf; TYPE_9__* tfs_peer; } ;
typedef TYPE_6__ ngx_http_tfs_t ;
struct TYPE_21__ {int app_id; } ;
typedef TYPE_7__ ngx_http_tfs_rcs_info_t ;
struct TYPE_22__ {TYPE_3__* sh; } ;
typedef TYPE_8__ ngx_http_tfs_rc_ctx_t ;
struct TYPE_23__ {int body_buffer; } ;
typedef TYPE_9__ ngx_http_tfs_peer_connection_t ;
typedef int ngx_buf_t ;
struct TYPE_17__ {int kp_queue; } ;
struct TYPE_16__ {TYPE_1__* upstream; } ;
struct TYPE_15__ {TYPE_8__* rc_ctx; } ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_TFS_ACTION_GET_APPID ;
 scalar_t__ NGX_HTTP_TFS_ACTION_KEEPALIVE ;
 scalar_t__ NGX_HTTP_TFS_EXIT_GENERAL_ERROR ;
 int ngx_http_tfs_clear_buf (int *) ;
 scalar_t__ ngx_http_tfs_misc_ctx_init (TYPE_6__*,TYPE_7__*) ;
 scalar_t__ ngx_http_tfs_rc_server_parse_message (TYPE_6__*) ;
 scalar_t__ ngx_http_tfs_set_output_appid (TYPE_6__*,int ) ;
 scalar_t__ ngx_queue_sentinel (int *) ;

ngx_int_t
ngx_http_tfs_process_rcs(ngx_http_tfs_t *t)
{
    ngx_buf_t *b;
    ngx_int_t rc;
    ngx_http_tfs_rc_ctx_t *rc_ctx;
    ngx_http_tfs_rcs_info_t *rc_info;
    ngx_http_tfs_peer_connection_t *tp;

    tp = t->tfs_peer;
    b = &tp->body_buffer;
    rc_ctx = t->loc_conf->upstream->rc_ctx;

    rc = ngx_http_tfs_rc_server_parse_message(t);

    ngx_http_tfs_clear_buf(b);

    if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_KEEPALIVE) {
        if (t->curr_ka_queue == ngx_queue_sentinel(&rc_ctx->sh->kp_queue)) {
            rc = NGX_DONE;
        }

        return rc;
    }

    if (rc == NGX_ERROR || rc <= NGX_HTTP_TFS_EXIT_GENERAL_ERROR) {
        return rc;
    }

    rc_info = t->rc_info_node;

    if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_GET_APPID) {
        rc = ngx_http_tfs_set_output_appid(t, rc_info->app_id);
        if (rc == NGX_ERROR) {
            return NGX_ERROR;
        }

        return NGX_DONE;
    }


    rc = ngx_http_tfs_misc_ctx_init(t, rc_info);

    return rc;
}
