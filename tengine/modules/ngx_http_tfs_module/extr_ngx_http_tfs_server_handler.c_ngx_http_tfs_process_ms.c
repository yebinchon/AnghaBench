
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_22__ ;
typedef struct TYPE_32__ TYPE_21__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_19__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_34__ {int curr_lookup_cache; } ;
struct TYPE_37__ {int code; } ;
struct TYPE_36__ {TYPE_5__ action; int chk_file_hole; int file_type; int chk_exist; scalar_t__ recursive; } ;
struct TYPE_31__ {scalar_t__ cluster_id; int left_length; int still_have; } ;
struct TYPE_29__ {scalar_t__ len; } ;
struct TYPE_30__ {int nelts; } ;
struct TYPE_32__ {int file_count; } ;
struct TYPE_33__ {scalar_t__ len; } ;
struct TYPE_38__ {int state; size_t last_dir_level; int orig_action; size_t logical_cluster_index; size_t rw_cluster_index; int decline_handler; TYPE_2__ block_cache_ctx; TYPE_4__ r_ctx; TYPE_1__ file; int log; TYPE_14__* rc_info_node; int name_server_addr; int * tfs_peer_servers; int pool; TYPE_15__ name_server_addr_text; TYPE_19__ file_holes; int * json_output; TYPE_11__* out_bufs; TYPE_21__ meta_info; scalar_t__* dir_lens; TYPE_22__ last_file_path; TYPE_3__* loc_conf; TYPE_8__* tfs_peer; scalar_t__ header; } ;
typedef TYPE_6__ ngx_http_tfs_t ;
struct TYPE_39__ {scalar_t__ cluster_id; } ;
typedef TYPE_7__ ngx_http_tfs_physical_cluster_t ;
struct TYPE_27__ {int pos; } ;
struct TYPE_40__ {TYPE_12__ body_buffer; } ;
typedef TYPE_8__ ngx_http_tfs_peer_connection_t ;
struct TYPE_41__ {TYPE_7__* rw_clusters; } ;
typedef TYPE_9__ ngx_http_tfs_logical_cluster_t ;
typedef int ngx_http_tfs_inet_t ;
struct TYPE_25__ {scalar_t__ len; } ;
typedef TYPE_10__ ngx_http_tfs_header_t ;
struct TYPE_26__ {struct TYPE_26__* next; } ;
typedef TYPE_11__ ngx_chain_t ;
typedef TYPE_12__ ngx_buf_t ;
struct TYPE_35__ {int meta_root_server; } ;
struct TYPE_28__ {TYPE_9__* logical_clusters; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_TFS_EXIT_LEASE_EXPIRED ;
 scalar_t__ NGX_HTTP_TFS_EXIT_PARENT_EXIST_ERROR ;
 scalar_t__ NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND ;
 scalar_t__ NGX_HTTP_TFS_EXIT_TABLE_VERSION_ERROR ;
 scalar_t__ NGX_HTTP_TFS_EXIT_TARGET_EXIST_ERROR ;
 int NGX_HTTP_TFS_LOCAL_BLOCK_CACHE ;
 size_t NGX_HTTP_TFS_NAME_SERVER ;
 int NGX_HTTP_TFS_NO ;
 size_t NGX_HTTP_TFS_ROOT_SERVER ;
 void* NGX_HTTP_TFS_STATE_ACTION_DONE ;
 int NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE ;
 int NGX_HTTP_TFS_STATE_READ_DONE ;
 int NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_REMOVE_DONE ;
 int NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO ;



 scalar_t__ NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS ;
 int NGX_HTTP_TFS_STATE_WRITE_DONE ;
 void* NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO ;

 int NGX_LOG_DEBUG ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_buf_size (TYPE_12__*) ;
 int ngx_http_tfs_batch_lookup_block_cache ;
 int ngx_http_tfs_clear_buf (TYPE_12__*) ;
 scalar_t__ ngx_http_tfs_get_parent_dir (TYPE_22__*,scalar_t__*) ;
 TYPE_11__* ngx_http_tfs_json_custom_file_info (int *,TYPE_21__*,int ) ;
 TYPE_11__* ngx_http_tfs_json_file_hole_info (int *,TYPE_19__*) ;
 int * ngx_http_tfs_json_init (int ,int ) ;
 scalar_t__ ngx_http_tfs_meta_server_parse_message (TYPE_6__*) ;
 int ngx_http_tfs_peer_set_addr (int ,int *,int *) ;
 scalar_t__ ngx_http_tfs_select_name_server (TYPE_6__*,TYPE_14__*,int *,TYPE_15__*) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__,...) ;
 scalar_t__* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_http_tfs_process_ms(ngx_http_tfs_t *t)
{
    ngx_buf_t *b;
    ngx_int_t rc, dir_levels, parent_dir_len;
    ngx_chain_t *cl, **ll;
    ngx_http_tfs_header_t *header;
    ngx_http_tfs_peer_connection_t *tp;
    ngx_http_tfs_logical_cluster_t *logical_cluster;
    ngx_http_tfs_physical_cluster_t *physical_cluster;

    header = (ngx_http_tfs_header_t *) t->header;
    tp = t->tfs_peer;
    b = &tp->body_buffer;

    if (ngx_buf_size(b) < header->len) {
        return NGX_AGAIN;
    }

    rc = ngx_http_tfs_meta_server_parse_message(t);
    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    b->pos += header->len;


    if (rc == NGX_HTTP_TFS_EXIT_LEASE_EXPIRED
        || rc == NGX_HTTP_TFS_EXIT_TABLE_VERSION_ERROR)
    {
        t->state = NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE;
        ngx_http_tfs_clear_buf(b);

        ngx_http_tfs_peer_set_addr(t->pool,
                         &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER],
                         (ngx_http_tfs_inet_t *)&t->loc_conf->meta_root_server);

        ngx_log_error(NGX_LOG_DEBUG, t->log, 0,
                      "need update meta table, rc: %i", rc);

        return NGX_OK;
    }


    if (rc == NGX_HTTP_TFS_EXIT_PARENT_EXIST_ERROR && t->r_ctx.recursive) {
        switch (t->r_ctx.action.code) {
        case 140:
        case 139:
        case 137:
        case 136:
            if (t->dir_lens == ((void*)0)) {
                parent_dir_len = ngx_http_tfs_get_parent_dir(&t->last_file_path,
                                                             &dir_levels);
                t->dir_lens = ngx_pcalloc(t->pool,
                                          sizeof(ngx_int_t) * dir_levels);
                if (t->dir_lens == ((void*)0)) {
                    return NGX_ERROR;
                }
                t->last_dir_level = 0;
                t->dir_lens[0] = t->last_file_path.len;

            } else {
                parent_dir_len = ngx_http_tfs_get_parent_dir(&t->last_file_path,
                                                             ((void*)0));
            }
            t->last_dir_level++;
            t->dir_lens[t->last_dir_level] = parent_dir_len;
            t->last_file_path.len = t->dir_lens[t->last_dir_level];
            t->orig_action = t->r_ctx.action.code;

            t->r_ctx.action.code = 140;
            return NGX_OK;
        }
    }




    if (rc == NGX_HTTP_TFS_EXIT_TARGET_EXIST_ERROR && t->last_dir_level > 0) {
        rc = NGX_OK;
    }

    if (rc == NGX_OK || rc == NGX_DECLINED) {
        switch (t->r_ctx.action.code) {
        case 140:
        case 139:
        case 137:
        case 136:
            if (t->dir_lens != ((void*)0)) {
                if (t->last_dir_level > 0) {
                    if (t->last_dir_level == 1) {
                        t->r_ctx.action.code = t->orig_action;
                    }
                    t->last_file_path.len = t->dir_lens[--(t->last_dir_level)];
                    return NGX_OK;
                }
            }
        case 134:
            t->state = NGX_HTTP_TFS_STATE_ACTION_DONE;
            return NGX_DONE;

        case 133:
            switch (t->state) {
            case 131:
                if (rc == NGX_DECLINED) {
                    t->state = 130;
                    ngx_http_tfs_clear_buf(b);
                    return NGX_OK;
                }
                t->state = NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO;
                break;
            case 130:
                t->state = NGX_HTTP_TFS_STATE_REMOVE_DONE;
                return NGX_DONE;
            }
            break;
        case 138:
            if (t->r_ctx.chk_exist == NGX_HTTP_TFS_NO && t->meta_info.file_count > 0) {

                for (cl = t->out_bufs, ll = &t->out_bufs; cl; cl = cl->next) {
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

            t->state = NGX_HTTP_TFS_STATE_ACTION_DONE;
            return NGX_DONE;

        case 135:
            if (rc == NGX_DECLINED
                || (t->r_ctx.chk_file_hole && !t->file.still_have))
            {
                if (t->r_ctx.chk_file_hole) {

                    if (t->file_holes.nelts > 0) {
                        t->json_output = ngx_http_tfs_json_init(t->log,
                                                                t->pool);
                        if (t->json_output == ((void*)0)) {
                            return NGX_ERROR;
                        }

                        for (cl = t->out_bufs, ll = &t->out_bufs;
                             cl;
                             cl = cl->next)
                        {
                            ll = &cl->next;
                        }

                        cl = ngx_http_tfs_json_file_hole_info(t->json_output,
                                                              &t->file_holes);
                        if (cl == ((void*)0)) {
                            return NGX_ERROR;
                        }

                        *ll = cl;
                    }

                }
                t->state = NGX_HTTP_TFS_STATE_READ_DONE;
                return NGX_DONE;
            }

            if (t->r_ctx.chk_file_hole) {
                ngx_http_tfs_clear_buf(b);
                return NGX_OK;
            }

            t->state = NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO;
            break;

        case 132:
            switch (t->state) {
            case 129:
                t->state = NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS;
                break;

            case 128:
                if (t->file.left_length == 0) {
                    t->state = NGX_HTTP_TFS_STATE_WRITE_DONE;
                    return NGX_DONE;
                }
                t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
            }
            break;
        default:
            return NGX_ERROR;
        }




        if (t->name_server_addr_text.len == 0) {
            rc = ngx_http_tfs_select_name_server(t, t->rc_info_node,
                                                 &t->name_server_addr,
                                                 &t->name_server_addr_text);
            if (rc == NGX_ERROR) {

                return NGX_HTTP_TFS_EXIT_SERVER_OBJECT_NOT_FOUND;
            }

            ngx_http_tfs_peer_set_addr(t->pool,
                                 &t->tfs_peer_servers[NGX_HTTP_TFS_NAME_SERVER],
                                 &t->name_server_addr);


            if (t->r_ctx.action.code == 132
                && t->state == NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS)
            {
                logical_cluster =
                   &t->rc_info_node->logical_clusters[t->logical_cluster_index];
                physical_cluster =
                    &logical_cluster->rw_clusters[t->rw_cluster_index];
                if (physical_cluster->cluster_id > 0) {
                    if (t->file.cluster_id == 0) {
                        t->file.cluster_id = physical_cluster->cluster_id;

                    } else if (t->file.cluster_id
                               != physical_cluster->cluster_id)
                    {
                        ngx_log_error(NGX_LOG_ERR, t->log, 0,
                                      "error, cluster id conflict: "
                                      "%uD(ns) <> %uD(ms)",
                                      physical_cluster->cluster_id,
                                      t->file.cluster_id);
                        return NGX_ERROR;
                    }
                    t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
                }
            }
        }

        if (t->r_ctx.action.code == 135) {

            t->block_cache_ctx.curr_lookup_cache =
                NGX_HTTP_TFS_LOCAL_BLOCK_CACHE;
            t->decline_handler = ngx_http_tfs_batch_lookup_block_cache;
            return NGX_DECLINED;
        }

        return NGX_OK;
    }

    return rc;
}
