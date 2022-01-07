
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_24__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_31__ {int file_data; TYPE_11__* data; } ;
struct TYPE_39__ {int code; } ;
struct TYPE_25__ {int version; scalar_t__ app_id; scalar_t__ is_raw_update; int no_dedup; TYPE_9__ action; int size; scalar_t__ offset; scalar_t__ write_meta_segment; int read_stat_type; int unlink_type; } ;
struct TYPE_37__ {int use_cache; int remote_ctx; } ;
struct TYPE_33__ {int left_length; TYPE_2__* segment_data; scalar_t__ file_offset; } ;
struct TYPE_26__ {int state; int group_seq; size_t logical_cluster_index; int decline_handler; TYPE_24__ dedup_ctx; TYPE_14__* data; void* retry_curr_ns; void* use_dedup; int log; TYPE_10__ r_ctx; scalar_t__ is_large_file; TYPE_7__ block_cache_ctx; TYPE_6__* main_conf; void* is_stat_dup_file; int * tfs_peer_servers; int pool; TYPE_5__* loc_conf; TYPE_3__ file; void* is_process_meta_seg; int send_body; int meta_segment_data; int name_server_addr; int name_server_addr_text; } ;
typedef TYPE_11__ ngx_http_tfs_t ;
struct TYPE_27__ {scalar_t__ app_id; scalar_t__ meta_root_server; TYPE_13__* logical_clusters; scalar_t__ need_duplicate; int remote_block_cache_info; int use_remote_block_cache; } ;
typedef TYPE_12__ ngx_http_tfs_rcs_info_t ;
struct TYPE_28__ {int dup_server_addr_hash; int dup_server_info; } ;
typedef TYPE_13__ ngx_http_tfs_logical_cluster_t ;
typedef int ngx_http_tfs_inet_t ;
struct TYPE_29__ {TYPE_8__* request_body; } ;
typedef TYPE_14__ ngx_http_request_t ;
struct TYPE_38__ {int bufs; } ;
struct TYPE_36__ {int enable_remote_block_cache; } ;
struct TYPE_34__ {scalar_t__ version; } ;
struct TYPE_35__ {scalar_t__ meta_root_server; TYPE_4__ meta_server_table; } ;
struct TYPE_30__ {int size; } ;
struct TYPE_32__ {void* oper_size; scalar_t__ oper_offset; TYPE_1__ segment_info; int data; int orig_data; } ;


 int NGX_CONF_UNSET ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_BAD_REQUEST ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_NOT_FOUND ;
 int const NGX_HTTP_TFS_ACTION_LS_DIR ;
 int const NGX_HTTP_TFS_ACTION_LS_FILE ;




 int NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 int NGX_HTTP_TFS_MAX_READ_FILE_SIZE ;
 int NGX_HTTP_TFS_MAX_SIZE ;
 size_t NGX_HTTP_TFS_META_SERVER ;
 size_t NGX_HTTP_TFS_NAME_SERVER ;
 int NGX_HTTP_TFS_READ_STAT_FORCE ;
 int NGX_HTTP_TFS_REMOTE_BLOCK_CACHE ;
 size_t NGX_HTTP_TFS_ROOT_SERVER ;
 int NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO ;
 int NGX_HTTP_TFS_UNLINK_DELETE ;
 void* NGX_HTTP_TFS_YES ;
 scalar_t__ NGX_HTTP_UNAUTHORIZED ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_chain_add_copy_with_buf (int ,int *,int ) ;
 int ngx_http_tfs_get_chain_buf_size (int ) ;
 scalar_t__ ngx_http_tfs_get_dedup_instance (TYPE_24__*,int *,int ) ;
 int ngx_http_tfs_get_duplicate_info ;
 scalar_t__ ngx_http_tfs_get_meta_segment (TYPE_11__*) ;
 scalar_t__ ngx_http_tfs_get_remote_block_cache_instance (int *,int *) ;
 scalar_t__ ngx_http_tfs_get_segment_for_write (TYPE_11__*) ;
 int ngx_http_tfs_lookup_block_cache ;
 scalar_t__ ngx_http_tfs_parse_meta_segment (TYPE_11__*,int ) ;
 int ngx_http_tfs_peer_set_addr (int ,int *,int *) ;
 int * ngx_http_tfs_select_meta_server (TYPE_11__*) ;
 scalar_t__ ngx_http_tfs_select_name_server (TYPE_11__*,TYPE_12__*,int *,int *) ;
 int ngx_http_tfs_set_custom_initial_parameters (TYPE_11__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 void* ngx_min (int ,int ) ;

ngx_int_t
ngx_http_tfs_misc_ctx_init(ngx_http_tfs_t *t, ngx_http_tfs_rcs_info_t *rc_info)
{
    ngx_int_t rc;
    ngx_http_request_t *r;
    ngx_http_tfs_inet_t *addr;
    ngx_http_tfs_logical_cluster_t *logical_cluster;


    if (t->r_ctx.version == 1) {
        switch (t->r_ctx.action.code) {
        case 129:
            t->state = NGX_HTTP_TFS_STATE_STAT_GET_BLK_INFO;
            break;

        case 131:
            t->state = NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO;
            break;

        case 128:
            t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
            break;

        case 130:
            t->state = NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO;
            if (!t->is_large_file && rc_info->need_duplicate) {



                if (t->r_ctx.unlink_type == NGX_HTTP_TFS_UNLINK_DELETE) {
                    t->is_stat_dup_file = NGX_HTTP_TFS_YES;
                    t->r_ctx.read_stat_type = NGX_HTTP_TFS_READ_STAT_FORCE;
                    t->use_dedup = NGX_HTTP_TFS_YES;
                    t->dedup_ctx.data = t;
                }
            }
            break;
        }

        rc = ngx_http_tfs_select_name_server(t, rc_info, &t->name_server_addr,
                                             &t->name_server_addr_text);
        if (rc == NGX_ERROR) {
            return NGX_HTTP_NOT_FOUND;
        }

        ngx_http_tfs_peer_set_addr(t->pool,
          &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER], &t->name_server_addr);

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

                rc = ngx_chain_add_copy_with_buf(t->pool,
                    &t->file.segment_data[0].orig_data, t->file.segment_data[0].data);
                if (rc == NGX_ERROR) {
                    return NGX_ERROR;
                }

                t->file.segment_data[0].segment_info.size =
                                 ngx_http_tfs_get_chain_buf_size(t->send_body);
                t->file.left_length= t->file.segment_data[0].segment_info.size;
                t->file.segment_data[0].oper_size =
                   ngx_min(t->file.left_length, NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);

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
                  ngx_min(t->file.left_length, NGX_HTTP_TFS_MAX_READ_FILE_SIZE);
            }
        }

    } else if (t->r_ctx.version == 2) {

        if (t->r_ctx.action.code != 131
            && t->r_ctx.action.code != NGX_HTTP_TFS_ACTION_LS_DIR
            && t->r_ctx.action.code != NGX_HTTP_TFS_ACTION_LS_FILE)
        {
            if (t->r_ctx.app_id != rc_info->app_id) {
                return NGX_HTTP_UNAUTHORIZED;
            }
        }


        if (rc_info->meta_root_server == 0) {
            return NGX_HTTP_BAD_REQUEST;
        }

        if (t->loc_conf->meta_root_server != rc_info->meta_root_server) {

            t->loc_conf->meta_root_server = rc_info->meta_root_server;
            t->loc_conf->meta_server_table.version = 0;
            ngx_http_tfs_peer_set_addr(t->pool,
                             &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER],
                             (ngx_http_tfs_inet_t *)&rc_info->meta_root_server);
        }


        t->state += 1;


        if (t->loc_conf->meta_server_table.version != 0) {

            t->state += 1;

            ngx_http_tfs_set_custom_initial_parameters(t);

            addr = ngx_http_tfs_select_meta_server(t);

            ngx_http_tfs_peer_set_addr(t->pool,
                          &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER], addr);
        }
    }





    switch (t->r_ctx.action.code) {
    case 130:
        t->group_seq = -1;

        if (t->r_ctx.version == 2
            || !t->is_stat_dup_file
            || t->state != NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO)
        {
            break;
        }
    case 129:
    case 131:
        if (t->main_conf->enable_remote_block_cache == NGX_CONF_UNSET) {
            if (rc_info->use_remote_block_cache) {
                t->block_cache_ctx.use_cache |= NGX_HTTP_TFS_REMOTE_BLOCK_CACHE;
            }
        }

        if (t->block_cache_ctx.use_cache & NGX_HTTP_TFS_REMOTE_BLOCK_CACHE) {
            rc = ngx_http_tfs_get_remote_block_cache_instance(
                                             &t->block_cache_ctx.remote_ctx,
                                             &rc_info->remote_block_cache_info);
            if (rc == NGX_ERROR) {
                ngx_log_error(NGX_LOG_ERR, t->log, 0,
                              "get remote block cache instance failed.");
                t->block_cache_ctx.use_cache &=~NGX_HTTP_TFS_REMOTE_BLOCK_CACHE;
            }
        }


        if (t->r_ctx.version == 1) {
            t->decline_handler = ngx_http_tfs_lookup_block_cache;
            return NGX_DECLINED;
        }
        break;

    case 128:
        t->group_seq = -1;
        if (t->is_large_file || t->r_ctx.version == 2) {
            rc = ngx_http_tfs_get_segment_for_write(t);
            if (rc == NGX_ERROR) {
                return NGX_ERROR;
            }
        }
    }


    if (t->r_ctx.version == 1
        && t->r_ctx.action.code == 128
        && !t->is_large_file
        && rc_info->need_duplicate
        && !t->r_ctx.no_dedup)
    {

        if (t->r_ctx.is_raw_update > 0) {
            return NGX_HTTP_BAD_REQUEST;
        }

        t->dedup_ctx.data = t;
        logical_cluster = &rc_info->logical_clusters[t->logical_cluster_index];
        rc = ngx_http_tfs_get_dedup_instance(&t->dedup_ctx,
                                         &logical_cluster->dup_server_info,
                                         logical_cluster->dup_server_addr_hash);
        if (rc == NGX_ERROR) {
            ngx_log_error(NGX_LOG_ERR, t->log, 0,
                          "get dedup instance failed.");

            return NGX_OK;
        }

        t->use_dedup = NGX_HTTP_TFS_YES;

        t->retry_curr_ns = NGX_HTTP_TFS_YES;

        r = t->data;
        t->dedup_ctx.file_data = r->request_body->bufs;
        t->decline_handler = ngx_http_tfs_get_duplicate_info;

        return NGX_DECLINED;
    }

    return NGX_OK;
}
