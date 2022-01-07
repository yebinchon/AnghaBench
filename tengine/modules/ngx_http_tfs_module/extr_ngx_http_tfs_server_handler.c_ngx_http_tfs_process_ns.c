
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_14__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_33__ {int data; } ;
typedef TYPE_7__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_31__ {size_t segment_index; int * segment_data; int cluster_id; } ;
struct TYPE_27__ {int code; } ;
struct TYPE_32__ {int version; int unlink_type; TYPE_1__ action; } ;
struct TYPE_34__ {int state; size_t logical_cluster_index; size_t rw_cluster_index; int group_count; int * tfs_peer_servers; int pool; TYPE_5__ file; int is_stat_dup_file; int * meta_segment_data; TYPE_6__ r_ctx; int is_large_file; int name_server_addr; int name_server_addr_text; int group_seq; TYPE_9__* rc_info_node; void* decline_handler; int is_process_meta_seg; int parent; int is_rolling_back; TYPE_4__* main_conf; int log; TYPE_3__* loc_conf; TYPE_11__* tfs_peer; scalar_t__ header; } ;
typedef TYPE_8__ ngx_http_tfs_t ;
struct TYPE_35__ {TYPE_12__* logical_clusters; } ;
typedef TYPE_9__ ngx_http_tfs_rcs_info_t ;
struct TYPE_22__ {int cluster_id; TYPE_7__ cluster_id_text; } ;
typedef TYPE_10__ ngx_http_tfs_physical_cluster_t ;
struct TYPE_26__ {int data; int (* free ) (TYPE_14__*,int ,int ) ;} ;
struct TYPE_23__ {TYPE_14__ peer; int body_buffer; } ;
typedef TYPE_11__ ngx_http_tfs_peer_connection_t ;
struct TYPE_24__ {TYPE_10__* rw_clusters; } ;
typedef TYPE_12__ ngx_http_tfs_logical_cluster_t ;
typedef int ngx_http_tfs_inet_t ;
struct TYPE_25__ {scalar_t__ len; } ;
typedef TYPE_13__ ngx_http_tfs_header_t ;
typedef int ngx_buf_t ;
struct TYPE_30__ {int cluster_id; } ;
struct TYPE_29__ {TYPE_2__* upstream; } ;
struct TYPE_28__ {int enable_rcs; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;




 scalar_t__ NGX_HTTP_TFS_AGAIN ;
 size_t NGX_HTTP_TFS_DATA_SERVER ;
 scalar_t__ NGX_HTTP_TFS_EXIT_GENERAL_ERROR ;
 scalar_t__ NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND ;
 size_t NGX_HTTP_TFS_NAME_SERVER ;
 int NGX_HTTP_TFS_STATE_READ_READ_DATA ;
 int NGX_HTTP_TFS_STATE_REMOVE_DELETE_DATA ;



 int NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT ;
 int NGX_HTTP_TFS_STATE_REMOVE_STAT_FILE ;
 int NGX_HTTP_TFS_STATE_STAT_STAT_FILE ;

 int NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME ;
 int NGX_HTTP_TFS_STATE_WRITE_DELETE_DATA ;



 int NGX_HTTP_TFS_STATE_WRITE_STAT_DUP_FILE ;
 int NGX_HTTP_TFS_UNLINK_DELETE ;
 int NGX_LOG_ERR ;
 scalar_t__ ngx_buf_size (int *) ;
 void* ngx_http_tfs_batch_process_start ;
 int ngx_http_tfs_clear_buf (int *) ;
 int ngx_http_tfs_get_cluster_id (int ) ;
 scalar_t__ ngx_http_tfs_name_server_parse_message (TYPE_8__*) ;
 int ngx_http_tfs_peer_set_addr (int ,int *,int *) ;
 int ngx_http_tfs_rcs_set_group_info_by_addr (TYPE_9__*,int,int ,int ) ;
 int * ngx_http_tfs_select_data_server (TYPE_8__*,int *) ;
 scalar_t__ ngx_http_tfs_select_name_server (TYPE_8__*,TYPE_9__*,int *,int *) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ) ;
 int stub1 (TYPE_14__*,int ,int ) ;
 int stub2 (TYPE_14__*,int ,int ) ;

ngx_int_t
ngx_http_tfs_process_ns(ngx_http_tfs_t *t)
{
    uint32_t cluster_id;
    ngx_buf_t *b;
    ngx_int_t rc;
    ngx_str_t *cluster_id_text;
    ngx_http_tfs_inet_t *addr;
    ngx_http_tfs_header_t *header;
    ngx_http_tfs_rcs_info_t *rc_info;
    ngx_http_tfs_peer_connection_t *tp;
    ngx_http_tfs_logical_cluster_t *logical_cluster;
    ngx_http_tfs_physical_cluster_t *physical_cluster;

    header = (ngx_http_tfs_header_t *) t->header;
    tp = t->tfs_peer;
    b = &tp->body_buffer;

    if (ngx_buf_size(b) < header->len) {
        return NGX_AGAIN;
    }

    rc = ngx_http_tfs_name_server_parse_message(t);

    ngx_http_tfs_clear_buf(b);
    if (rc == NGX_ERROR) {
        return rc;
    }

    if (rc <= NGX_HTTP_TFS_EXIT_GENERAL_ERROR) {
        return NGX_HTTP_TFS_AGAIN;
    }

    switch (t->r_ctx.action.code) {
    case 136:
        t->state = NGX_HTTP_TFS_STATE_STAT_STAT_FILE;
        break;
    case 138:
        if (!t->parent
            && (t->r_ctx.version == 2
                || (t->is_large_file && !t->is_process_meta_seg)))
        {
            t->decline_handler = ngx_http_tfs_batch_process_start;
            return NGX_DECLINED;
        }
        t->state = NGX_HTTP_TFS_STATE_READ_READ_DATA;
        break;
    case 135:
        switch(t->state) {
        case 131:

            if (t->loc_conf->upstream->enable_rcs) {
                rc_info = t->rc_info_node;
                logical_cluster =
                    &rc_info->logical_clusters[t->logical_cluster_index];
                physical_cluster =
                    &logical_cluster->rw_clusters[t->rw_cluster_index];

                cluster_id_text = &physical_cluster->cluster_id_text;
                cluster_id = ngx_http_tfs_get_cluster_id(cluster_id_text->data);
                if (t->file.cluster_id != cluster_id) {
                    ngx_log_error(NGX_LOG_ERR,
                                  t->log, 0,
                                  "error, cluster id conflict: "
                                  "%uD(ns) <> %uD(rcs)",
                                  t->file.cluster_id,
                                  cluster_id);
                    return NGX_ERROR;
                }
                physical_cluster->cluster_id = t->file.cluster_id;

            } else {
                t->main_conf->cluster_id = t->file.cluster_id;
            }
            t->state = 130;
            return rc;

        case 129:
            if (t->group_count != 1) {
                t->state = 128;
                return rc;
            }

            t->group_seq = 0;
        case 128:
            rc_info = t->rc_info_node;
            ngx_http_tfs_rcs_set_group_info_by_addr(rc_info,
                                                    t->group_count,
                                                    t->group_seq,
                                                    t->name_server_addr);
            rc = ngx_http_tfs_select_name_server(t, rc_info,
                                                 &t->name_server_addr,
                                                 &t->name_server_addr_text);
            if (rc == NGX_ERROR) {
                return NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND;
            }

            tp->peer.free(&tp->peer, tp->peer.data, 0);

            ngx_http_tfs_peer_set_addr(t->pool,
                                       &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER],
                                       &t->name_server_addr);
            return rc;

        case 130:
            if (t->is_stat_dup_file) {
                t->state = NGX_HTTP_TFS_STATE_WRITE_STAT_DUP_FILE;

            } else if (t->is_rolling_back) {
                t->state = NGX_HTTP_TFS_STATE_WRITE_DELETE_DATA;

            } else {
                if (!t->parent
                    && (t->r_ctx.version == 2
                        || (t->is_large_file && !t->is_process_meta_seg)))
                {
                    t->decline_handler = ngx_http_tfs_batch_process_start;
                    return NGX_DECLINED;
                }
                t->state = NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME;
            }
            break;
        }
        break;
    case 137:
        switch (t->state) {
        case 133:

            if (t->group_count != 1) {
                t->state = 132;
            }

            t->group_seq = 0;
        case 132:
            rc_info = t->rc_info_node;
            ngx_http_tfs_rcs_set_group_info_by_addr(rc_info,
                                                    t->group_count,
                                                    t->group_seq,
                                                    t->name_server_addr);
            rc = ngx_http_tfs_select_name_server(t, rc_info,
                                                 &t->name_server_addr,
                                                 &t->name_server_addr_text);
            if (rc == NGX_ERROR) {

                return NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND;
            }

            tp->peer.free(&tp->peer, tp->peer.data, 0);

            ngx_http_tfs_peer_set_addr(t->pool,
                             &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER],
                             &t->name_server_addr);
            return rc;
        case 134:
            if (t->is_large_file
                && t->r_ctx.unlink_type == NGX_HTTP_TFS_UNLINK_DELETE
                && t->meta_segment_data == ((void*)0))
            {
                t->state = NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT;

            } else if (t->is_stat_dup_file) {
                t->state = NGX_HTTP_TFS_STATE_REMOVE_STAT_FILE;

            } else {
                t->state = NGX_HTTP_TFS_STATE_REMOVE_DELETE_DATA;
            }
        }
        break;
    }

    addr = ngx_http_tfs_select_data_server(t,
                                  &t->file.segment_data[t->file.segment_index]);
    if (addr == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_http_tfs_peer_set_addr(t->pool,
                               &t->tfs_peer_servers[NGX_HTTP_TFS_DATA_SERVER],
                               addr);
    return rc;
}
