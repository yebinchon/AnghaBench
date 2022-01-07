
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_16__ {scalar_t__ segment_count; scalar_t__ segment_index; scalar_t__ left_length; scalar_t__ still_have; scalar_t__ curr_batch_count; } ;
struct TYPE_13__ {scalar_t__ code; } ;
struct TYPE_15__ {int version; int file_path_s; TYPE_1__ action; } ;
struct TYPE_14__ {int curr_lookup_cache; } ;
struct TYPE_18__ {scalar_t__ sp_fail_count; scalar_t__ sp_count; void* state; TYPE_5__* tfs_peer_servers; TYPE_4__ file; TYPE_3__ r_ctx; int file_name; scalar_t__ is_large_file; int * data; TYPE_2__ block_cache_ctx; void* is_rolling_back; scalar_t__ client_abort; int log; scalar_t__ request_timeout; } ;
typedef TYPE_6__ ngx_http_tfs_t ;
typedef int ngx_http_request_t ;
typedef int ngx_buf_t ;
struct TYPE_17__ {int body_buffer; } ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_CLIENT_CLOSED_REQUEST ;
 int NGX_HTTP_REQUEST_TIME_OUT ;
 scalar_t__ NGX_HTTP_TFS_ACTION_READ_FILE ;
 scalar_t__ NGX_HTTP_TFS_ACTION_WRITE_FILE ;
 int NGX_HTTP_TFS_LOCAL_BLOCK_CACHE ;
 size_t NGX_HTTP_TFS_META_SERVER ;
 void* NGX_HTTP_TFS_STATE_READ_DONE ;
 void* NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO ;
 void* NGX_HTTP_TFS_STATE_READ_GET_FRAG_INFO ;
 void* NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO ;
 void* NGX_HTTP_TFS_STATE_WRITE_WRITE_MS ;
 void* NGX_HTTP_TFS_YES ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_http_set_ctx (int *,TYPE_6__*,int ) ;
 scalar_t__ ngx_http_tfs_batch_lookup_block_cache (TYPE_6__*) ;
 int ngx_http_tfs_clear_buf (int *) ;
 int ngx_http_tfs_finalize_request (int *,TYPE_6__*,int ) ;
 int ngx_http_tfs_finalize_state (TYPE_6__*,scalar_t__) ;
 int ngx_http_tfs_module ;
 scalar_t__ ngx_http_tfs_set_meta_segment_data (TYPE_6__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__) ;

ngx_int_t
ngx_http_tfs_batch_process_end(ngx_http_tfs_t *t)
{
    ngx_int_t rc = NGX_ERROR;
    ngx_buf_t *body_buffer;
    ngx_http_request_t *r;


    if (t->sp_fail_count > 0) {
        ngx_log_error(NGX_LOG_ERR, t->log, 0,
                      "sub process error, rest segment count: %D ",
                      t->file.segment_count - t->file.segment_index);


        if (t->r_ctx.version == 1
            && t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_WRITE_FILE)
        {
            t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
            t->is_rolling_back = NGX_HTTP_TFS_YES;
            t->file.segment_count = t->file.segment_index + t->sp_count;
            t->file.segment_index = 0;
            ngx_http_tfs_finalize_state(t, NGX_OK);
            return NGX_OK;
        }

        if (t->request_timeout) {
            ngx_http_tfs_finalize_request(t->data, t,
                                          NGX_HTTP_REQUEST_TIME_OUT);

        } else if (t->client_abort) {
            ngx_http_tfs_finalize_request(t->data, t,
                                          NGX_HTTP_CLIENT_CLOSED_REQUEST);

        } else {
            ngx_http_tfs_finalize_state(t, NGX_ERROR);
        }
        return NGX_ERROR;
    }

    t->file.segment_index += t->sp_count;
    t->file.curr_batch_count = 0;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, t->log, 0,
                   "batch process segment count: %uD, rest segment count: %D ",
                   t->sp_count, t->file.segment_count - t->file.segment_index);

    if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_WRITE_FILE) {

        if (t->r_ctx.version == 1 && t->is_large_file) {
            t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;


            if (t->client_abort) {
                t->is_rolling_back = NGX_HTTP_TFS_YES;
                t->file.segment_count = t->file.segment_index;
                t->file.segment_index = 0;

            } else {

                if (t->file.left_length == 0) {
                    rc = ngx_http_tfs_set_meta_segment_data(t);
                    if (rc == NGX_ERROR) {
                        ngx_http_tfs_finalize_state(t, NGX_ERROR);
                        return NGX_ERROR;
                    }
                }
            }

        } else if (t->r_ctx.version == 2) {
            t->state = NGX_HTTP_TFS_STATE_WRITE_WRITE_MS;
        }

        rc = NGX_OK;

    } else if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_READ_FILE) {
        if (t->file.segment_index < t->file.segment_count
            && t->file.left_length > 0)
        {
            t->state = NGX_HTTP_TFS_STATE_READ_GET_BLK_INFO;


            t->block_cache_ctx.curr_lookup_cache =
                                               NGX_HTTP_TFS_LOCAL_BLOCK_CACHE;
            return ngx_http_tfs_batch_lookup_block_cache(t);
        }


        r = t->data;
        ngx_http_set_ctx(r, t, ngx_http_tfs_module);
        rc = NGX_DONE;

        if (t->is_large_file) {
            t->state = NGX_HTTP_TFS_STATE_READ_DONE;
            t->file_name = t->r_ctx.file_path_s;
        }

        if (t->r_ctx.version == 2) {
            if (t->file.still_have) {
                t->state = NGX_HTTP_TFS_STATE_READ_GET_FRAG_INFO;
                body_buffer =
                 &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER].body_buffer;
                ngx_http_tfs_clear_buf(body_buffer);
                rc = NGX_OK;

            } else {
                t->state = NGX_HTTP_TFS_STATE_READ_DONE;
            }
        }
    }

    ngx_http_tfs_finalize_state(t, rc);

    return NGX_OK;
}
