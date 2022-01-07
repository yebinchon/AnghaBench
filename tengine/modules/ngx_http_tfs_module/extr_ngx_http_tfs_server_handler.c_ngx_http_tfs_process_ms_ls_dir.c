
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_23__ {scalar_t__ file_count; scalar_t__ rest_file_count; struct TYPE_23__* next; } ;
struct TYPE_19__ {int file_type; int chk_exist; } ;
struct TYPE_18__ {scalar_t__ still_have; } ;
struct TYPE_20__ {scalar_t__ length; TYPE_7__ meta_info; int state; TYPE_3__ r_ctx; int json_output; TYPE_8__* out_bufs; TYPE_2__ file; int log; TYPE_1__* loc_conf; int pool; TYPE_5__* tfs_peer_servers; TYPE_5__* tfs_peer; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
struct TYPE_25__ {scalar_t__ last; scalar_t__ end; scalar_t__ start; scalar_t__ pos; } ;
struct TYPE_21__ {TYPE_9__ body_buffer; } ;
typedef TYPE_5__ ngx_http_tfs_peer_connection_t ;
struct TYPE_22__ {int still_have; scalar_t__ count; } ;
typedef TYPE_6__ ngx_http_tfs_ms_ls_response_t ;
typedef int ngx_http_tfs_inet_t ;
typedef TYPE_7__ ngx_http_tfs_custom_meta_info_t ;
struct TYPE_24__ {struct TYPE_24__* next; } ;
typedef TYPE_8__ ngx_chain_t ;
typedef TYPE_9__ ngx_buf_t ;
struct TYPE_17__ {int meta_root_server; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_TFS_EXIT_LEASE_EXPIRED ;
 scalar_t__ NGX_HTTP_TFS_EXIT_TABLE_VERSION_ERROR ;
 size_t NGX_HTTP_TFS_ROOT_SERVER ;
 int NGX_HTTP_TFS_STATE_ACTION_DONE ;
 int NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE ;
 int NGX_LOG_DEBUG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_buf_size (TYPE_9__*) ;
 int ngx_http_tfs_clear_buf (TYPE_9__*) ;
 TYPE_8__* ngx_http_tfs_json_custom_file_info (int ,TYPE_7__*,int ) ;
 scalar_t__ ngx_http_tfs_meta_server_parse_message (TYPE_4__*) ;
 int ngx_http_tfs_peer_set_addr (int ,TYPE_5__*,int *) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__) ;
 scalar_t__ ngx_movemem (scalar_t__,scalar_t__,scalar_t__) ;

ngx_int_t
ngx_http_tfs_process_ms_ls_dir(ngx_http_tfs_t *t)
{
    ngx_buf_t *b;
    ngx_int_t rc;
    ngx_chain_t *cl, **ll;
    ngx_http_tfs_ms_ls_response_t *fake_rsp;
    ngx_http_tfs_peer_connection_t *tps;
    ngx_http_tfs_peer_connection_t *tp;
    ngx_http_tfs_custom_meta_info_t *meta_info;

    tp = t->tfs_peer;
    b = &tp->body_buffer;
    tps = t->tfs_peer_servers;

    if (t->length != ngx_buf_size(b) && b->last != b->end) {
        return NGX_AGAIN;
    }

    rc = ngx_http_tfs_meta_server_parse_message(t);
    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }


    if (rc == NGX_HTTP_TFS_EXIT_LEASE_EXPIRED
        || rc == NGX_HTTP_TFS_EXIT_TABLE_VERSION_ERROR)
    {
        t->state = NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE;
        ngx_http_tfs_clear_buf(b);

        ngx_http_tfs_peer_set_addr(t->pool,
                                   &tps[NGX_HTTP_TFS_ROOT_SERVER],
                                   (ngx_http_tfs_inet_t *)
                                    &t->loc_conf->meta_root_server);

        ngx_log_error(NGX_LOG_DEBUG, t->log, 0,
                      "need update meta table, rc: %i", rc);

        return NGX_OK;
    }

    if (rc == NGX_OK) {
        if (t->length == 0) {
            if (!t->r_ctx.chk_exist) {
                if (t->file.still_have) {
                    ngx_http_tfs_clear_buf(b);
                    return NGX_OK;
                }

                if (t->meta_info.file_count > 0) {

                    for (cl = t->out_bufs, ll = &t->out_bufs; cl; cl = cl->next)
                    {
                        ll = &cl->next;
                    }

                    cl = ngx_http_tfs_json_custom_file_info(t->json_output,
                                                            &t->meta_info,
                                                            t->r_ctx.file_type);
                    if (cl == ((void*)0)) {
                        return NGX_ERROR;
                    }

                    *ll = cl;
                }
            }

            t->state = NGX_HTTP_TFS_STATE_ACTION_DONE;
            return NGX_DONE;
        }



        for(meta_info = &t->meta_info;
            meta_info->next;
            meta_info = meta_info->next);

        if (meta_info->rest_file_count > 0) {

            fake_rsp = (ngx_http_tfs_ms_ls_response_t *) b->start;
            fake_rsp->still_have = 1;
            fake_rsp->count = meta_info->rest_file_count;
            b->last =
                ngx_movemem(b->start + sizeof(ngx_http_tfs_ms_ls_response_t),
                            b->pos, ngx_buf_size(b));
            b->pos = b->start;

            t->length += ngx_buf_size(b);
            return NGX_AGAIN;
        }

    }

    return rc;
}
