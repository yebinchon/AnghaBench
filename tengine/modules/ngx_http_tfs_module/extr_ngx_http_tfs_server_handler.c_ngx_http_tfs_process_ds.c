
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_23__ ;
typedef struct TYPE_36__ TYPE_20__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_16__ ;
typedef struct TYPE_33__ TYPE_15__ ;
typedef struct TYPE_32__ TYPE_14__ ;
typedef struct TYPE_31__ TYPE_13__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_42__ {size_t segment_index; scalar_t__ left_length; size_t segment_count; scalar_t__ file_offset; int still_have; TYPE_11__* segment_data; } ;
struct TYPE_44__ {int block_id; } ;
struct TYPE_36__ {TYPE_8__ file; } ;
struct TYPE_43__ {int code; } ;
struct TYPE_45__ {void* chk_exist; int version; void* is_raw_update; int file_path_s; TYPE_20__ fsname; TYPE_7__ action; } ;
struct TYPE_37__ {scalar_t__ size; int flag; } ;
struct TYPE_39__ {int file_ref_count; int file_data; } ;
struct TYPE_35__ {scalar_t__ size; } ;
struct TYPE_28__ {int state; TYPE_5__* tfs_peer_servers; TYPE_6__ file; TYPE_9__ r_ctx; int file_name; int is_large_file; TYPE_23__ file_stat; int request_timeout; int client_abort; void* decline_handler; TYPE_3__ dedup_ctx; TYPE_14__* data; void* use_dedup; int is_rolling_back; int parent; TYPE_1__ stat_info; int log; void* is_stat_dup_file; int json_output; TYPE_15__* out_bufs; TYPE_12__* tfs_peer; scalar_t__ header; } ;
typedef TYPE_10__ ngx_http_tfs_t ;
struct TYPE_40__ {scalar_t__ size; scalar_t__ offset; int file_id; int block_id; } ;
struct TYPE_29__ {scalar_t__ oper_size; scalar_t__ oper_offset; TYPE_4__ segment_info; TYPE_15__* data; } ;
typedef TYPE_11__ ngx_http_tfs_segment_data_t ;
struct TYPE_34__ {size_t pos; size_t file_pos; } ;
struct TYPE_30__ {TYPE_16__ body_buffer; } ;
typedef TYPE_12__ ngx_http_tfs_peer_connection_t ;
struct TYPE_31__ {scalar_t__ len; } ;
typedef TYPE_13__ ngx_http_tfs_header_t ;
struct TYPE_32__ {TYPE_2__* request_body; } ;
typedef TYPE_14__ ngx_http_request_t ;
struct TYPE_33__ {TYPE_16__* buf; struct TYPE_33__* next; } ;
typedef TYPE_15__ ngx_chain_t ;
typedef TYPE_16__ ngx_buf_t ;
struct TYPE_41__ {TYPE_16__ body_buffer; } ;
struct TYPE_38__ {int bufs; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_CLIENT_CLOSED_REQUEST ;
 scalar_t__ NGX_HTTP_REQUEST_TIME_OUT ;



 scalar_t__ NGX_HTTP_TFS_AGAIN ;
 scalar_t__ NGX_HTTP_TFS_EXIT_FILE_INFO_ERROR ;
 scalar_t__ NGX_HTTP_TFS_EXIT_FILE_STATUS_ERROR ;
 scalar_t__ NGX_HTTP_TFS_EXIT_META_NOT_FOUND_ERROR ;
 scalar_t__ NGX_HTTP_TFS_EXIT_NO_LOGICBLOCK_ERROR ;
 int NGX_HTTP_TFS_FILE_CONCEAL ;
 int NGX_HTTP_TFS_FILE_NORMAL ;
 scalar_t__ NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 scalar_t__ NGX_HTTP_TFS_MAX_READ_FILE_SIZE ;
 size_t NGX_HTTP_TFS_META_SERVER ;
 void* NGX_HTTP_TFS_NO ;

 void* NGX_HTTP_TFS_STATE_REMOVE_DONE ;
 int NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO ;
 int NGX_HTTP_TFS_STATE_REMOVE_GET_FRAG_INFO ;
 int NGX_HTTP_TFS_STATE_REMOVE_NOTIFY_MS ;
 int NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT ;

 int NGX_HTTP_TFS_STATE_STAT_DONE ;

 int NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS ;


 int NGX_HTTP_TFS_STATE_WRITE_DONE ;
 void* NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO ;


 int NGX_HTTP_TFS_YES ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_buf_in_memory (TYPE_16__*) ;
 scalar_t__ ngx_buf_size (TYPE_16__*) ;
 int ngx_http_tfs_clear_buf (TYPE_16__*) ;
 scalar_t__ ngx_http_tfs_data_server_parse_message (TYPE_10__*) ;
 TYPE_15__* ngx_http_tfs_json_raw_file_stat (int ,int ,int ,TYPE_23__*) ;
 int ngx_http_tfs_raw_fsname_get_name (TYPE_20__*,int ,int ) ;
 int ngx_http_tfs_remove_block_cache (TYPE_10__*,TYPE_11__*) ;
 void* ngx_http_tfs_set_duplicate_info ;
 scalar_t__ ngx_http_tfs_set_output_file_name (TYPE_10__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 void* ngx_min (scalar_t__,scalar_t__) ;

ngx_int_t
ngx_http_tfs_process_ds(ngx_http_tfs_t *t)
{
    size_t b_size;
    uint32_t body_len, len_to_update;
    ngx_int_t rc;
    ngx_buf_t *b, *body_buffer;
    ngx_chain_t *cl, **ll;
    ngx_http_request_t *r;
    ngx_http_tfs_header_t *header;
    ngx_http_tfs_segment_data_t *segment_data;
    ngx_http_tfs_peer_connection_t *tp;

    header = (ngx_http_tfs_header_t *) t->header;
    tp = t->tfs_peer;
    b = &tp->body_buffer;

    body_len = header->len;
    if (ngx_buf_size(b) < body_len) {
        return NGX_AGAIN;
    }

    rc = ngx_http_tfs_data_server_parse_message(t);
    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    ngx_http_tfs_clear_buf(b);

    segment_data = &t->file.segment_data[t->file.segment_index];

    switch (t->r_ctx.action.code) {
    case 136:
        t->file_name = t->r_ctx.file_path_s;
        if (rc == NGX_OK) {
            t->state = NGX_HTTP_TFS_STATE_STAT_DONE;

            if (t->r_ctx.chk_exist == NGX_HTTP_TFS_NO) {

                for (cl = t->out_bufs, ll = &t->out_bufs; cl; cl = cl->next) {
                    ll = &cl->next;
                }

                cl = ngx_http_tfs_json_raw_file_stat(
                                  t->json_output,
                                  ngx_http_tfs_raw_fsname_get_name(&t->r_ctx.fsname,
                                                                   t->is_large_file,
                                                                   0),
                                  t->r_ctx.fsname.file.block_id,
                                  &t->file_stat);
                if (cl == ((void*)0)) {
                    return NGX_ERROR;
                }

                *ll = cl;
            }

            return NGX_DONE;
        }

        if (rc == NGX_HTTP_TFS_EXIT_NO_LOGICBLOCK_ERROR) {
            ngx_http_tfs_remove_block_cache(t, segment_data);
        }

        return NGX_HTTP_TFS_AGAIN;

    case 135:
        switch(t->state) {
        case 129:
            if (rc == NGX_OK) {
                if (t->file_stat.flag == NGX_HTTP_TFS_FILE_NORMAL) {
                    rc = ngx_http_tfs_set_output_file_name(t);
                    if (rc == NGX_ERROR) {
                        return NGX_ERROR;
                    }
                    r = t->data;
                    t->dedup_ctx.file_data = r->request_body->bufs;
                    t->dedup_ctx.file_ref_count += 1;
                    t->decline_handler = ngx_http_tfs_set_duplicate_info;
                    return NGX_DECLINED;
                }

            } else {


                if (rc == NGX_HTTP_TFS_EXIT_FILE_INFO_ERROR
                    || rc == NGX_HTTP_TFS_EXIT_META_NOT_FOUND_ERROR)
                {
                    t->state = NGX_HTTP_TFS_STATE_WRITE_CLUSTER_ID_NS;
                    t->is_stat_dup_file = NGX_HTTP_TFS_NO;
                    t->use_dedup = NGX_HTTP_TFS_NO;

                    t->file.segment_data[0].segment_info.block_id = 0;
                    t->file.segment_data[0].segment_info.file_id = 0;
                    rc = NGX_OK;

                } else {

                    rc = NGX_HTTP_TFS_AGAIN;
                }
            }
            break;
        case 131:
            if (rc == NGX_OK) {
                t->state = 128;

            } else {

                return NGX_HTTP_TFS_AGAIN;
            }
            break;
        case 128:

            if (rc != NGX_OK) {
                return NGX_HTTP_TFS_AGAIN;
            }


            cl = segment_data->data;
            len_to_update = segment_data->oper_size;
            while (len_to_update > 0) {
                while (cl && ngx_buf_size(cl->buf) == 0) {
                    cl = cl->next;
                }
                if (cl == ((void*)0)) {
                    ngx_log_error(NGX_LOG_ERR, t->log, 0,
                                  "update send data offset "
                                  "failed for early end.");
                    return NGX_ERROR;
                }
                b_size = ngx_min(ngx_buf_size(cl->buf), len_to_update);
                if (ngx_buf_in_memory(cl->buf)) {
                    cl->buf->pos += b_size;

                } else {
                    cl->buf->file_pos += b_size;
                }
                len_to_update -= b_size;
            }
            segment_data->data = cl;

            t->file.left_length -= segment_data->oper_size;
            t->stat_info.size += segment_data->oper_size;
            segment_data->oper_offset += segment_data->oper_size;
            segment_data->oper_size = ngx_min(t->file.left_length,
                                              NGX_HTTP_TFS_MAX_FRAGMENT_SIZE);

            if (t->r_ctx.version == 1) {
                if (t->file.left_length > 0 && !t->is_large_file) {
                    t->state = 128;
                    return NGX_OK;
                }
            }
            t->state = 132;
            break;
        case 132:

            if (rc != NGX_OK) {
                return NGX_HTTP_TFS_AGAIN;
            }


            if (t->parent) {
                return NGX_DONE;
            }

            t->file.segment_index++;


            if (t->r_ctx.version == 1) {

                if (t->client_abort && t->r_ctx.is_raw_update == NGX_HTTP_TFS_NO) {
                    t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
                    t->is_rolling_back = NGX_HTTP_TFS_YES;
                    t->file.segment_index = 0;
                    return NGX_OK;
                }

                t->state = NGX_HTTP_TFS_STATE_WRITE_DONE;
                rc = ngx_http_tfs_set_output_file_name(t);
                if (rc == NGX_ERROR) {
                    return NGX_ERROR;
                }



                if (t->use_dedup) {
                    r = t->data;
                    t->dedup_ctx.file_data = r->request_body->bufs;
                    t->dedup_ctx.file_ref_count += 1;
                    t->decline_handler = ngx_http_tfs_set_duplicate_info;
                    return NGX_DECLINED;
                }
                return NGX_DONE;
            }
            break;


         case 130:
             t->file.segment_index++;
             if (t->file.segment_index >= t->file.segment_count) {
                 if (t->client_abort) {
                     return NGX_HTTP_CLIENT_CLOSED_REQUEST;
                 }

                 if (t->request_timeout) {
                     return NGX_HTTP_REQUEST_TIME_OUT;
                 }

                 return NGX_ERROR;
             }

             t->state = NGX_HTTP_TFS_STATE_WRITE_GET_BLK_INFO;
             return NGX_OK;
        }
        break;
    case 137:
        switch(t->state) {
        case 133:
            if (rc == NGX_OK) {
                if (t->file_stat.flag == NGX_HTTP_TFS_FILE_NORMAL
                    || t->file_stat.flag == NGX_HTTP_TFS_FILE_CONCEAL)
                {
                    t->state = NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT;
                    segment_data->oper_size =
                                     ngx_min(t->file_stat.size,
                                             NGX_HTTP_TFS_MAX_READ_FILE_SIZE);
                    return NGX_OK;
                }


                return NGX_HTTP_TFS_EXIT_FILE_STATUS_ERROR;
            }

            return NGX_HTTP_TFS_AGAIN;
       case 134:
            if (rc != NGX_OK) {
                return rc;
            }


            if (t->r_ctx.version == 1 && !t->is_large_file) {
                t->state = NGX_HTTP_TFS_STATE_REMOVE_DONE;
                t->file_name = t->r_ctx.file_path_s;
                return NGX_DONE;
            }


            t->file.segment_index++;
            if (t->file.segment_index >= t->file.segment_count) {
                if (t->r_ctx.version == 1) {

                    t->state = NGX_HTTP_TFS_STATE_REMOVE_DONE;
                    t->file_name = t->r_ctx.file_path_s;
                    return NGX_DONE;
                }

                if (t->r_ctx.version == 2) {
                    if (!t->file.still_have) {
                        t->state = NGX_HTTP_TFS_STATE_REMOVE_NOTIFY_MS;

                    } else {
                        t->state = NGX_HTTP_TFS_STATE_REMOVE_GET_FRAG_INFO;
                        t->file.file_offset = segment_data->segment_info.offset
                                            + segment_data->segment_info.size;
                        t->file.segment_index = 0;
                    }

                    body_buffer =
                     &t->tfs_peer_servers[NGX_HTTP_TFS_META_SERVER].body_buffer;
                    ngx_http_tfs_clear_buf(body_buffer);
                }

            } else {
                t->state = NGX_HTTP_TFS_STATE_REMOVE_GET_BLK_INFO;
            }
            break;
        }
    }

    return rc;
}
