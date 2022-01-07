
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int ngx_int_t ;
struct TYPE_28__ {TYPE_6__* segment_data; int cluster_id; } ;
struct TYPE_25__ {int use_cache; int remote_ctx; } ;
struct TYPE_21__ {int cluster_id; } ;
struct TYPE_22__ {int code; } ;
struct TYPE_24__ {TYPE_11__ fsname; int file_suffix; int unlink_type; TYPE_1__ action; } ;
struct TYPE_29__ {int state; TYPE_7__ file; int * out_bufs; void* use_dedup; void* is_stat_dup_file; TYPE_4__ block_cache_ctx; int log; int data; TYPE_3__ r_ctx; TYPE_2__* tfs_peer; int pool; int meta_segment_data; TYPE_9__* rc_info_node; } ;
typedef TYPE_8__ ngx_http_tfs_t ;
struct TYPE_30__ {int remote_block_cache_info; int use_remote_block_cache; } ;
typedef TYPE_9__ ngx_http_tfs_rcs_info_t ;
struct TYPE_20__ {int dup_file_suffix; int dup_file_name; int save_body_buffer; int file_data; int file_ref_count; TYPE_8__* data; } ;
typedef TYPE_10__ ngx_http_tfs_dedup_ctx_t ;
struct TYPE_26__ {int file_id; int block_id; } ;
struct TYPE_27__ {TYPE_5__ segment_info; } ;
struct TYPE_23__ {int body_buffer; } ;


 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;


 void* NGX_HTTP_TFS_NO ;
 int NGX_HTTP_TFS_REMOTE_BLOCK_CACHE ;
 int NGX_HTTP_TFS_UNLINK_DELETE ;
 void* NGX_HTTP_TFS_YES ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_http_tfs_dedup_check_filename (int *,TYPE_11__*) ;
 int ngx_http_tfs_dedup_check_suffix (int *,int *) ;
 int ngx_http_tfs_dedup_remove (TYPE_10__*,int ,int ) ;
 int ngx_http_tfs_dedup_set (TYPE_10__*,int ,int ) ;
 int ngx_http_tfs_finalize_request (int ,TYPE_8__*,int ) ;
 int ngx_http_tfs_finalize_state (TYPE_8__*,int ) ;
 int ngx_http_tfs_get_meta_segment (TYPE_8__*) ;
 int ngx_http_tfs_get_remote_block_cache_instance (int *,int *) ;
 int ngx_http_tfs_lookup_block_cache (TYPE_8__*) ;
 int ngx_http_tfs_raw_fsname_parse (int *,int *,TYPE_11__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_tfs_dedup_callback(ngx_http_tfs_dedup_ctx_t *ctx, ngx_int_t rc)
{
    ngx_http_tfs_t *t;
    ngx_http_tfs_rcs_info_t *rc_info;

    t = ctx->data;
    rc_info = t->rc_info_node;

    switch (t->r_ctx.action.code) {
    case 137:
        switch(t->state) {
        case 132:

            if (rc == NGX_OK) {

                rc = ngx_http_tfs_dedup_check_filename(&ctx->dup_file_name,
                                                       &t->r_ctx.fsname);
                if (rc == NGX_OK) {

                    if (t->r_ctx.unlink_type == NGX_HTTP_TFS_UNLINK_DELETE) {
                        if (--ctx->file_ref_count <= 0) {



                            t->state = 133;
                            t->is_stat_dup_file = NGX_HTTP_TFS_NO;
                            t->tfs_peer->body_buffer = ctx->save_body_buffer;
                            ctx->file_data = t->meta_segment_data;
                            rc = ngx_http_tfs_dedup_remove(ctx, t->pool,
                                                           t->log);



                            if (rc == NGX_ERROR) {
                                ngx_http_tfs_finalize_state(t, NGX_OK);
                            }

                            return;
                        }


                        t->state = 134;
                        ctx->file_data = t->meta_segment_data;
                        rc = ngx_http_tfs_dedup_set(ctx, t->pool, t->log);

                        if (rc == NGX_ERROR) {
                            ngx_http_tfs_finalize_state(t, NGX_DONE);
                        }

                        return;
                    }
                }


                t->tfs_peer->body_buffer = ctx->save_body_buffer;
                t->state = 133;
                t->is_stat_dup_file = NGX_HTTP_TFS_NO;
                ngx_http_tfs_finalize_state(t, NGX_OK);

                return;
            }


            t->tfs_peer->body_buffer = ctx->save_body_buffer;
            t->state = 133;
            t->is_stat_dup_file = NGX_HTTP_TFS_NO;
            ngx_http_tfs_finalize_state(t, NGX_OK);
            return;
        case 133:
        case 135:
            ngx_http_tfs_finalize_state(t, NGX_OK);
            return;
        case 134:
            ngx_http_tfs_finalize_state(t, NGX_DONE);
            return;
        }
        break;
    case 136:
        switch(t->state) {
        case 131:
        case 129:

            if (rc == NGX_OK) {

                rc = ngx_http_tfs_dedup_check_suffix(&ctx->dup_file_name,
                                                     &t->r_ctx.file_suffix);
                if (rc == NGX_OK) {

                    rc = ngx_http_tfs_raw_fsname_parse(&ctx->dup_file_name,
                                                       &ctx->dup_file_suffix,
                                                       &t->r_ctx.fsname);
                    if (rc == NGX_OK) {
                        t->file.cluster_id = t->r_ctx.fsname.cluster_id;
                        t->is_stat_dup_file = NGX_HTTP_TFS_YES;
                        t->state = 129;
                    }

                } else {



                    t->use_dedup = NGX_HTTP_TFS_NO;
                }
            }


            rc = ngx_http_tfs_get_meta_segment(t);
            if (rc != NGX_OK) {
                ngx_log_error(NGX_LOG_ERR, t->log, 0,
                              "tfs get meta segment failed");
                ngx_http_tfs_finalize_request(t->data, t,
                                              NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }


            if (t->is_stat_dup_file) {

                if (rc_info->use_remote_block_cache) {
                    rc = ngx_http_tfs_get_remote_block_cache_instance(
                              &t->block_cache_ctx.remote_ctx,
                              &rc_info->remote_block_cache_info);
                    if (rc == NGX_ERROR) {
                        ngx_log_error(NGX_LOG_ERR, t->log, 0,
                                     "get remote block cache instance failed.");

                    } else {
                        t->block_cache_ctx.use_cache |=
                            NGX_HTTP_TFS_REMOTE_BLOCK_CACHE;
                    }
                }

                ngx_http_tfs_lookup_block_cache(t);

                return;
            }

            ngx_http_tfs_finalize_state(t, NGX_OK);
            break;
        case 128:
            if (rc == NGX_OK) {
                t->state = 130;
                ngx_http_tfs_finalize_state(t, NGX_DONE);

            } else {



                t->state = 131;
                t->is_stat_dup_file = NGX_HTTP_TFS_NO;
                t->use_dedup = NGX_HTTP_TFS_NO;

                t->out_bufs = ((void*)0);

                t->file.segment_data[0].segment_info.block_id = 0;
                t->file.segment_data[0].segment_info.file_id = 0;
                ngx_http_tfs_finalize_state(t, NGX_OK);
            }
            break;
        case 130:
            ngx_http_tfs_finalize_state(t, NGX_DONE);
            break;
        }
    }
    return;
}
