
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_63__ TYPE_9__ ;
typedef struct TYPE_62__ TYPE_8__ ;
typedef struct TYPE_61__ TYPE_7__ ;
typedef struct TYPE_60__ TYPE_6__ ;
typedef struct TYPE_59__ TYPE_5__ ;
typedef struct TYPE_58__ TYPE_4__ ;
typedef struct TYPE_57__ TYPE_3__ ;
typedef struct TYPE_56__ TYPE_38__ ;
typedef struct TYPE_55__ TYPE_2__ ;
typedef struct TYPE_54__ TYPE_26__ ;
typedef struct TYPE_53__ TYPE_21__ ;
typedef struct TYPE_52__ TYPE_20__ ;
typedef struct TYPE_51__ TYPE_1__ ;
typedef struct TYPE_50__ TYPE_19__ ;
typedef struct TYPE_49__ TYPE_18__ ;
typedef struct TYPE_48__ TYPE_17__ ;
typedef struct TYPE_47__ TYPE_16__ ;
typedef struct TYPE_46__ TYPE_15__ ;
typedef struct TYPE_45__ TYPE_14__ ;
typedef struct TYPE_44__ TYPE_13__ ;
typedef struct TYPE_43__ TYPE_12__ ;
typedef struct TYPE_42__ TYPE_11__ ;
typedef struct TYPE_41__ TYPE_10__ ;


struct TYPE_51__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_47__ {TYPE_19__* rc_ctx; TYPE_3__* ups_addr; int enable_rcs; } ;
typedef TYPE_16__ ngx_http_tfs_upstream_t ;
struct TYPE_45__ {int const code; } ;
struct TYPE_46__ {TYPE_14__ action; int appkey; int size; scalar_t__ offset; scalar_t__ write_meta_segment; } ;
struct TYPE_61__ {scalar_t__ cluster_id; int left_length; TYPE_6__* segment_data; scalar_t__ file_offset; } ;
struct TYPE_55__ {int port; int ip; } ;
struct TYPE_44__ {int pool; } ;
struct TYPE_42__ {size_t size; int num; } ;
struct TYPE_43__ {int alignment; TYPE_13__* filter_ctx; int output_filter; TYPE_11__ bufs; int pool; } ;
struct TYPE_48__ {int header_size; scalar_t__ (* decline_handler ) (TYPE_17__*) ;TYPE_26__* tfs_peer; TYPE_38__* recv_chain; int header_buffer; int log; TYPE_15__ r_ctx; TYPE_18__* rc_info_node; TYPE_7__ file; int is_process_meta_seg; scalar_t__ is_large_file; int send_body; int meta_segment_data; int state; TYPE_4__* main_conf; TYPE_2__ name_server_addr; int pool; TYPE_13__ writer; TYPE_12__ output; TYPE_20__* data; TYPE_10__* loc_conf; int write_event_handler; int read_event_handler; } ;
typedef TYPE_17__ ngx_http_tfs_t ;
struct TYPE_49__ {int app_id; } ;
typedef TYPE_18__ ngx_http_tfs_rcs_info_t ;
struct TYPE_50__ {TYPE_8__* shpool; } ;
typedef TYPE_19__ ngx_http_tfs_rc_ctx_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_52__ {int write_event_handler; int read_event_handler; } ;
typedef TYPE_20__ ngx_http_request_t ;
struct TYPE_53__ {int directio_alignment; size_t client_body_buffer_size; } ;
typedef TYPE_21__ ngx_http_core_loc_conf_t ;
struct TYPE_63__ {int * buf; } ;
struct TYPE_62__ {int mutex; } ;
struct TYPE_59__ {int size; } ;
struct TYPE_60__ {void* oper_size; scalar_t__ oper_offset; TYPE_5__ segment_info; int data; } ;
struct TYPE_58__ {scalar_t__ cluster_id; } ;
struct TYPE_57__ {scalar_t__ sockaddr; } ;
struct TYPE_56__ {TYPE_9__* next; int * buf; } ;
struct TYPE_54__ {int body_buffer; } ;
struct TYPE_41__ {TYPE_16__* upstream; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int const NGX_HTTP_TFS_ACTION_GET_APPID ;
 int const NGX_HTTP_TFS_ACTION_KEEPALIVE ;




 int NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 int NGX_HTTP_TFS_MAX_READ_FILE_SIZE ;
 int NGX_HTTP_TFS_MAX_SIZE ;
 int NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS ;
 int NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO ;
 int NGX_HTTP_TFS_YES ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_chain_writer ;
 int ngx_http_core_module ;
 TYPE_21__* ngx_http_get_module_loc_conf (TYPE_20__*,int ) ;
 TYPE_38__* ngx_http_tfs_alloc_chains (int ,int) ;
 int ngx_http_tfs_connect (TYPE_17__*) ;
 int ngx_http_tfs_get_chain_buf_size (int ) ;
 scalar_t__ ngx_http_tfs_get_meta_segment (TYPE_17__*) ;
 scalar_t__ ngx_http_tfs_get_segment_for_write (TYPE_17__*) ;
 scalar_t__ ngx_http_tfs_misc_ctx_init (TYPE_17__*,TYPE_18__*) ;
 scalar_t__ ngx_http_tfs_parse_meta_segment (TYPE_17__*,int ) ;
 scalar_t__ ngx_http_tfs_peer_init (TYPE_17__*) ;
 TYPE_18__* ngx_http_tfs_rcs_lookup (TYPE_19__*,int ) ;
 int ngx_http_tfs_rd_check_broken_connection ;
 int ngx_http_tfs_read_handler ;
 TYPE_26__* ngx_http_tfs_select_peer (TYPE_17__*) ;
 int ngx_http_tfs_send_handler ;
 int ngx_http_tfs_send_response (TYPE_20__*,TYPE_17__*) ;
 scalar_t__ ngx_http_tfs_set_output_appid (TYPE_17__*,int ) ;
 int ngx_http_tfs_wr_check_broken_connection ;
 int ngx_log_error (int ,int ,int ,char*) ;
 void* ngx_min (int ,int ) ;
 size_t ngx_pagesize ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;
 int ntohs (int ) ;
 scalar_t__ stub1 (TYPE_17__*) ;

ngx_int_t
ngx_http_tfs_init(ngx_http_tfs_t *t)
{
    ngx_int_t rc;
    ngx_http_request_t *r;
    ngx_http_tfs_rc_ctx_t *rc_ctx;
    ngx_http_tfs_rcs_info_t *rc_info;
    ngx_http_tfs_upstream_t *upstream;
    ngx_http_core_loc_conf_t *clcf;

    t->read_event_handler = ngx_http_tfs_read_handler;
    t->write_event_handler = ngx_http_tfs_send_handler;
    r = ((void*)0);
    rc_info = ((void*)0);
    rc_ctx = ((void*)0);
    upstream = t->loc_conf->upstream;

    if (t->r_ctx.action.code != NGX_HTTP_TFS_ACTION_KEEPALIVE) {
        r = t->data;
        r->read_event_handler = ngx_http_tfs_rd_check_broken_connection;
        r->write_event_handler = ngx_http_tfs_wr_check_broken_connection;

        clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
        if (clcf == ((void*)0)) {
            return NGX_ERROR;
        }

        t->output.alignment = clcf->directio_alignment;
        t->output.bufs.size = clcf->client_body_buffer_size;

    } else {

        t->output.alignment = 512;
        t->output.bufs.size = (size_t) 2 * ngx_pagesize;
    }

    t->output.pool = t->pool;
    t->output.bufs.num = 1;
    t->output.output_filter = ngx_chain_writer;
    t->output.filter_ctx = &t->writer;
    t->header_size = sizeof(ngx_http_tfs_header_t);
    t->writer.pool = t->pool;

    rc = ngx_http_tfs_peer_init(t);
    if (rc != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, t->log, 0,
                      "tfs peer init failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }


    t->recv_chain = ngx_http_tfs_alloc_chains(t->pool, 2);
    if (t->recv_chain == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, t->log, 0,
                      "tfs alloc chains failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (t->r_ctx.action.code != NGX_HTTP_TFS_ACTION_KEEPALIVE) {

        if (!upstream->enable_rcs) {
            switch(t->r_ctx.action.code) {
            case 130:
                t->state = NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO;
                break;
            case 129:
                t->state = NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO;
                break;
            case 131:
                t->state = NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO;
                break;
            case 128:
                t->state = NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS;
                break;
            default:
                ngx_shmtx_unlock(&rc_ctx->shpool->mutex);
                return NGX_ERROR;
            }

            t->name_server_addr.ip =
                ((struct sockaddr_in*)
                 (upstream->ups_addr->sockaddr))->sin_addr.s_addr;
            t->name_server_addr.port =
                ntohs(((struct sockaddr_in*)
                       (upstream->ups_addr->sockaddr))->sin_port);


            if (t->r_ctx.action.code == 128) {
                if (t->main_conf->cluster_id > 0) {
                    t->file.cluster_id = t->main_conf->cluster_id;
                    t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
                }


                if (t->is_large_file) {
                    rc = ngx_http_tfs_get_segment_for_write(t);
                    if (rc == NGX_ERROR) {
                        return NGX_ERROR;
                    }
                }
            }

            if (!t->is_large_file
                || (t->r_ctx.action.code != 128))
            {

                rc = ngx_http_tfs_get_meta_segment(t);
                if (rc == NGX_ERROR) {
                    ngx_log_error(NGX_LOG_ERR, t->log, 0,
                                  "tfs get meta segment failed");
                    return NGX_HTTP_INTERNAL_SERVER_ERROR;
                }


                if (t->r_ctx.action.code == 128) {

                    if (t->r_ctx.write_meta_segment) {
                        rc = ngx_http_tfs_parse_meta_segment(t, t->send_body);
                        if (rc == NGX_ERROR) {
                            return NGX_ERROR;
                        }
                        t->send_body = t->meta_segment_data;
                    }

                    t->file.segment_data[0].data = t->send_body;
                    t->file.segment_data[0].segment_info.size =
                                  ngx_http_tfs_get_chain_buf_size(t->send_body);
                    t->file.left_length =
                                      t->file.segment_data[0].segment_info.size;
                    t->file.segment_data[0].oper_size =
                                        ngx_min(t->file.left_length,
                                                NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);

                } else {


                    if (t->is_large_file) {
                        t->is_process_meta_seg = NGX_HTTP_TFS_YES;
                        t->file.file_offset = 0;
                        t->file.left_length = NGX_HTTP_TFS_MAX_SIZE;

                    } else {
                        t->file.file_offset = t->r_ctx.offset;
                        t->file.left_length = t->r_ctx.size;
                    }

                    t->file.segment_data[0].oper_offset = t->file.file_offset;
                    t->file.segment_data[0].oper_size =
                                       ngx_min(t->file.left_length,
                                               NGX_HTTP_TFS_MAX_READ_FILE_SIZE);
                }
            }

        } else {

            rc_ctx = upstream->rc_ctx;
            ngx_shmtx_lock(&rc_ctx->shpool->mutex);
            rc_info = ngx_http_tfs_rcs_lookup(rc_ctx, t->r_ctx.appkey);
            ngx_shmtx_unlock(&rc_ctx->shpool->mutex);
            if (rc_info != ((void*)0)) {
                t->rc_info_node = rc_info;

                if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_GET_APPID) {
                    rc = ngx_http_tfs_set_output_appid(t, rc_info->app_id);
                    if (rc == NGX_ERROR) {
                        ngx_log_error(NGX_LOG_ERR, t->log, 0,
                                      "tfs set output appid failed");
                        return NGX_ERROR;
                    }

                    ngx_http_tfs_send_response(r, t);
                    return NGX_OK;
                }


                rc = ngx_http_tfs_misc_ctx_init(t, rc_info);
                if (rc == NGX_DECLINED) {
                    if (t->decline_handler) {
                        rc = t->decline_handler(t);
                        if (rc == NGX_ERROR) {
                            return rc;
                        }
                    }
                    return NGX_OK;
                }

                if (rc != NGX_OK) {
                    return rc;
                }
            }
        }
    }

    t->tfs_peer = ngx_http_tfs_select_peer(t);
    if (t->tfs_peer == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, t->log, 0, "tfs select peer failed");

        return NGX_ERROR;
    }

    t->recv_chain->buf = &t->header_buffer;
    t->recv_chain->next->buf = &t->tfs_peer->body_buffer;

    ngx_http_tfs_connect(t);

    return NGX_OK;
}
