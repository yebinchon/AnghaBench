#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_63__   TYPE_9__ ;
typedef  struct TYPE_62__   TYPE_8__ ;
typedef  struct TYPE_61__   TYPE_7__ ;
typedef  struct TYPE_60__   TYPE_6__ ;
typedef  struct TYPE_59__   TYPE_5__ ;
typedef  struct TYPE_58__   TYPE_4__ ;
typedef  struct TYPE_57__   TYPE_3__ ;
typedef  struct TYPE_56__   TYPE_38__ ;
typedef  struct TYPE_55__   TYPE_2__ ;
typedef  struct TYPE_54__   TYPE_26__ ;
typedef  struct TYPE_53__   TYPE_21__ ;
typedef  struct TYPE_52__   TYPE_20__ ;
typedef  struct TYPE_51__   TYPE_1__ ;
typedef  struct TYPE_50__   TYPE_19__ ;
typedef  struct TYPE_49__   TYPE_18__ ;
typedef  struct TYPE_48__   TYPE_17__ ;
typedef  struct TYPE_47__   TYPE_16__ ;
typedef  struct TYPE_46__   TYPE_15__ ;
typedef  struct TYPE_45__   TYPE_14__ ;
typedef  struct TYPE_44__   TYPE_13__ ;
typedef  struct TYPE_43__   TYPE_12__ ;
typedef  struct TYPE_42__   TYPE_11__ ;
typedef  struct TYPE_41__   TYPE_10__ ;

/* Type definitions */
struct TYPE_51__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_47__ {TYPE_19__* rc_ctx; TYPE_3__* ups_addr; int /*<<< orphan*/  enable_rcs; } ;
typedef  TYPE_16__ ngx_http_tfs_upstream_t ;
struct TYPE_45__ {int const code; } ;
struct TYPE_46__ {TYPE_14__ action; int /*<<< orphan*/  appkey; int /*<<< orphan*/  size; scalar_t__ offset; scalar_t__ write_meta_segment; } ;
struct TYPE_61__ {scalar_t__ cluster_id; int /*<<< orphan*/  left_length; TYPE_6__* segment_data; scalar_t__ file_offset; } ;
struct TYPE_55__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
struct TYPE_44__ {int /*<<< orphan*/  pool; } ;
struct TYPE_42__ {size_t size; int num; } ;
struct TYPE_43__ {int alignment; TYPE_13__* filter_ctx; int /*<<< orphan*/  output_filter; TYPE_11__ bufs; int /*<<< orphan*/  pool; } ;
struct TYPE_48__ {int header_size; scalar_t__ (* decline_handler ) (TYPE_17__*) ;TYPE_26__* tfs_peer; TYPE_38__* recv_chain; int /*<<< orphan*/  header_buffer; int /*<<< orphan*/  log; TYPE_15__ r_ctx; TYPE_18__* rc_info_node; TYPE_7__ file; int /*<<< orphan*/  is_process_meta_seg; scalar_t__ is_large_file; int /*<<< orphan*/  send_body; int /*<<< orphan*/  meta_segment_data; int /*<<< orphan*/  state; TYPE_4__* main_conf; TYPE_2__ name_server_addr; int /*<<< orphan*/  pool; TYPE_13__ writer; TYPE_12__ output; TYPE_20__* data; TYPE_10__* loc_conf; int /*<<< orphan*/  write_event_handler; int /*<<< orphan*/  read_event_handler; } ;
typedef  TYPE_17__ ngx_http_tfs_t ;
struct TYPE_49__ {int /*<<< orphan*/  app_id; } ;
typedef  TYPE_18__ ngx_http_tfs_rcs_info_t ;
struct TYPE_50__ {TYPE_8__* shpool; } ;
typedef  TYPE_19__ ngx_http_tfs_rc_ctx_t ;
typedef  int /*<<< orphan*/  ngx_http_tfs_header_t ;
struct TYPE_52__ {int /*<<< orphan*/  write_event_handler; int /*<<< orphan*/  read_event_handler; } ;
typedef  TYPE_20__ ngx_http_request_t ;
struct TYPE_53__ {int directio_alignment; size_t client_body_buffer_size; } ;
typedef  TYPE_21__ ngx_http_core_loc_conf_t ;
struct TYPE_63__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_62__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_59__ {int /*<<< orphan*/  size; } ;
struct TYPE_60__ {void* oper_size; scalar_t__ oper_offset; TYPE_5__ segment_info; int /*<<< orphan*/  data; } ;
struct TYPE_58__ {scalar_t__ cluster_id; } ;
struct TYPE_57__ {scalar_t__ sockaddr; } ;
struct TYPE_56__ {TYPE_9__* next; int /*<<< orphan*/ * buf; } ;
struct TYPE_54__ {int /*<<< orphan*/  body_buffer; } ;
struct TYPE_41__ {TYPE_16__* upstream; } ;

/* Variables and functions */
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int const NGX_HTTP_TFS_ACTION_GET_APPID ; 
 int const NGX_HTTP_TFS_ACTION_KEEPALIVE ; 
#define  NGX_HTTP_TFS_ACTION_READ_FILE 131 
#define  NGX_HTTP_TFS_ACTION_REMOVE_FILE 130 
#define  NGX_HTTP_TFS_ACTION_STAT_FILE 129 
#define  NGX_HTTP_TFS_ACTION_WRITE_FILE 128 
 int /*<<< orphan*/  NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_MAX_READ_FILE_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_MAX_SIZE ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_YES ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  ngx_chain_writer ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_21__* FUNC0 (TYPE_20__*,int /*<<< orphan*/ ) ; 
 TYPE_38__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_17__*) ; 
 scalar_t__ FUNC5 (TYPE_17__*) ; 
 scalar_t__ FUNC6 (TYPE_17__*,TYPE_18__*) ; 
 scalar_t__ FUNC7 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_17__*) ; 
 TYPE_18__* FUNC9 (TYPE_19__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_tfs_rd_check_broken_connection ; 
 int /*<<< orphan*/  ngx_http_tfs_read_handler ; 
 TYPE_26__* FUNC10 (TYPE_17__*) ; 
 int /*<<< orphan*/  ngx_http_tfs_send_handler ; 
 int /*<<< orphan*/  FUNC11 (TYPE_20__*,TYPE_17__*) ; 
 scalar_t__ FUNC12 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_tfs_wr_check_broken_connection ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t ngx_pagesize ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_17__*) ; 

ngx_int_t
FUNC19(ngx_http_tfs_t *t)
{
    ngx_int_t                  rc;
    ngx_http_request_t        *r;
    ngx_http_tfs_rc_ctx_t     *rc_ctx;
    ngx_http_tfs_rcs_info_t   *rc_info;
    ngx_http_tfs_upstream_t   *upstream;
    ngx_http_core_loc_conf_t  *clcf;

    t->read_event_handler = ngx_http_tfs_read_handler;
    t->write_event_handler = ngx_http_tfs_send_handler;
    r = NULL;
    rc_info = NULL;
    rc_ctx = NULL;
    upstream = t->loc_conf->upstream;

    if (t->r_ctx.action.code != NGX_HTTP_TFS_ACTION_KEEPALIVE) {
        r = t->data;
        r->read_event_handler = ngx_http_tfs_rd_check_broken_connection;
        r->write_event_handler = ngx_http_tfs_wr_check_broken_connection;

        clcf = FUNC0(r, ngx_http_core_module);
        if (clcf == NULL) {
            return NGX_ERROR;
        }

        t->output.alignment = clcf->directio_alignment;
        t->output.bufs.size = clcf->client_body_buffer_size;

    } else {
        /* rc-keepalive */
        t->output.alignment = 512;
        t->output.bufs.size = (size_t) 2 * ngx_pagesize;
    }

    t->output.pool = t->pool;
    t->output.bufs.num = 1;
    t->output.output_filter = ngx_chain_writer;
    t->output.filter_ctx = &t->writer;
    t->header_size = sizeof(ngx_http_tfs_header_t);
    t->writer.pool = t->pool;

    rc = FUNC8(t);
    if (rc != NGX_OK) {
        FUNC13(NGX_LOG_ERR, t->log, 0,
                      "tfs peer init failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    /* header and body */
    t->recv_chain = FUNC1(t->pool, 2);
    if (t->recv_chain == NULL) {
        FUNC13(NGX_LOG_ERR, t->log, 0,
                      "tfs alloc chains failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (t->r_ctx.action.code != NGX_HTTP_TFS_ACTION_KEEPALIVE) {

        if (!upstream->enable_rcs) {
            switch(t->r_ctx.action.code) {
            case NGX_HTTP_TFS_ACTION_REMOVE_FILE:
                t->state = NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO;
                break;
            case NGX_HTTP_TFS_ACTION_STAT_FILE:
                t->state = NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO;
                break;
            case NGX_HTTP_TFS_ACTION_READ_FILE:
                t->state = NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO;
                break;
            case NGX_HTTP_TFS_ACTION_WRITE_FILE:
                t->state = NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS;
                break;
            default:
                FUNC16(&rc_ctx->shpool->mutex);
                return NGX_ERROR;
            }

            t->name_server_addr.ip =
                ((struct sockaddr_in*)
                 (upstream->ups_addr->sockaddr))->sin_addr.s_addr;
            t->name_server_addr.port =
                FUNC17(((struct sockaddr_in*)
                       (upstream->ups_addr->sockaddr))->sin_port);

            /* skip get cluster id from ns */
            if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_WRITE_FILE) {
                if (t->main_conf->cluster_id > 0) {
                    t->file.cluster_id = t->main_conf->cluster_id;
                    t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
                }

                /* prepare each segment's data */
                if (t->is_large_file) {
                    rc = FUNC5(t);
                    if (rc == NGX_ERROR) {
                        return NGX_ERROR;
                    }
                }
            }

            if (!t->is_large_file
                || (t->r_ctx.action.code != NGX_HTTP_TFS_ACTION_WRITE_FILE))
            {
                /* fill meta segment */
                rc = FUNC4(t);
                if (rc == NGX_ERROR) {
                    FUNC13(NGX_LOG_ERR, t->log, 0,
                                  "tfs get meta segment failed");
                    return NGX_HTTP_INTERNAL_SERVER_ERROR;
                }

                /* small file */
                if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_WRITE_FILE) {
                    /* parse meta segment */
                    if (t->r_ctx.write_meta_segment) {
                        rc = FUNC7(t, t->send_body);
                        if (rc == NGX_ERROR) {
                            return NGX_ERROR;
                        }
                        t->send_body = t->meta_segment_data;
                    }

                    t->file.segment_data[0].data = t->send_body;
                    t->file.segment_data[0].segment_info.size =
                                  FUNC3(t->send_body);
                    t->file.left_length =
                                      t->file.segment_data[0].segment_info.size;
                    t->file.segment_data[0].oper_size =
                                        FUNC14(t->file.left_length,
                                                NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);

                } else {
                    /* set oper size && offset,
                     * large file must read the whole meta segment */
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
                                       FUNC14(t->file.left_length,
                                               NGX_HTTP_TFS_MAX_READ_FILE_SIZE);
                }
            }

        } else {
            /* skip rc server */
            rc_ctx = upstream->rc_ctx;
            FUNC15(&rc_ctx->shpool->mutex);
            rc_info = FUNC9(rc_ctx, t->r_ctx.appkey);
            FUNC16(&rc_ctx->shpool->mutex);
            if (rc_info != NULL) {
                t->rc_info_node = rc_info;

                if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_GET_APPID) {
                    rc = FUNC12(t, rc_info->app_id);
                    if (rc == NGX_ERROR) {
                        FUNC13(NGX_LOG_ERR, t->log, 0,
                                      "tfs set output appid failed");
                        return NGX_ERROR;
                    }

                    FUNC11(r, t);
                    return NGX_OK;
                }

                /* TODO: use fine granularity mutex(per rc_info_node mutex) */
                rc = FUNC6(t, rc_info);
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

    t->tfs_peer = FUNC10(t);
    if (t->tfs_peer == NULL) {
        FUNC13(NGX_LOG_ERR, t->log, 0, "tfs select peer failed");

        return NGX_ERROR;
    }

    t->recv_chain->buf = &t->header_buffer;
    t->recv_chain->next->buf = &t->tfs_peer->body_buffer;

    FUNC2(t);

    return NGX_OK;
}