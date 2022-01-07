
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
typedef int ngx_uint_t ;
typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_28__ {int segment_count; scalar_t__ still_have; scalar_t__ file_offset; scalar_t__ left_length; TYPE_7__* segment_data; scalar_t__ segment_index; int cluster_id; } ;
struct TYPE_26__ {scalar_t__ code; } ;
struct TYPE_27__ {scalar_t__ chk_file_hole; int offset; TYPE_3__ action; } ;
struct TYPE_29__ {scalar_t__ has_split_frag; TYPE_5__ file; int log; int file_holes; TYPE_4__ r_ctx; int pool; scalar_t__ is_first_segment; TYPE_8__* tfs_peer; scalar_t__ header; } ;
typedef TYPE_6__ ngx_http_tfs_t ;
struct TYPE_24__ {scalar_t__ offset; scalar_t__ size; int file_id; int block_id; } ;
struct TYPE_30__ {scalar_t__ oper_size; scalar_t__ oper_offset; TYPE_1__ segment_info; } ;
typedef TYPE_7__ ngx_http_tfs_segment_data_t ;
struct TYPE_23__ {int * pos; } ;
struct TYPE_31__ {TYPE_15__ body_buffer; } ;
typedef TYPE_8__ ngx_http_tfs_peer_connection_t ;
struct TYPE_25__ {int frag_count; int cluster_id; } ;
struct TYPE_32__ {scalar_t__ still_have; TYPE_2__ frag_info; } ;
typedef TYPE_9__ ngx_http_tfs_ms_read_response_t ;
struct TYPE_20__ {scalar_t__ offset; scalar_t__ size; int file_id; int block_id; } ;
typedef TYPE_10__ ngx_http_tfs_meta_frag_meta_info_t ;
struct TYPE_21__ {int type; } ;
typedef TYPE_11__ ngx_http_tfs_header_t ;
struct TYPE_22__ {scalar_t__ offset; int length; } ;
typedef TYPE_12__ ngx_http_tfs_file_hole_info_t ;
typedef int int64_t ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_TFS_ACTION_READ_FILE ;
 scalar_t__ NGX_HTTP_TFS_ACTION_WRITE_FILE ;
 int NGX_HTTP_TFS_INIT_FILE_HOLE_COUNT ;
 scalar_t__ NGX_HTTP_TFS_NO ;

 scalar_t__ NGX_HTTP_TFS_YES ;
 int NGX_LOG_DEBUG ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,int ,int) ;
 TYPE_12__* ngx_array_push (int *) ;
 TYPE_7__* ngx_http_tfs_prealloc (int ,TYPE_7__*,int,int) ;
 scalar_t__ ngx_http_tfs_status_message (TYPE_15__*,int *,int ) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__,int) ;
 scalar_t__ ngx_max (int ,scalar_t__) ;
 int ngx_memzero (TYPE_7__*,int) ;
 void* ngx_min (scalar_t__,scalar_t__) ;
 TYPE_7__* ngx_pcalloc (int ,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_parse_read_meta_message(ngx_http_tfs_t *t)
{
    u_char *p;
    int64_t curr_length;
    uint16_t type;
    uint32_t count;
    uint64_t end_offset;
    ngx_int_t rc;
    ngx_str_t action;
    ngx_uint_t i;
    ngx_http_tfs_header_t *header;
    ngx_http_tfs_segment_data_t *first_segment, *last_segment,
                                        *segment_data;
    ngx_http_tfs_file_hole_info_t *file_hole_info;
    ngx_http_tfs_peer_connection_t *tp;
    ngx_http_tfs_ms_read_response_t *resp;
    ngx_http_tfs_meta_frag_meta_info_t *fmi;

    header = (ngx_http_tfs_header_t *) t->header;
    tp = t->tfs_peer;
    type = header->type;

    switch (type) {
    case 128:
        ngx_str_set(&action, "read file(meta server)");
        return ngx_http_tfs_status_message(&tp->body_buffer, &action, t->log);
    }

    resp = (ngx_http_tfs_ms_read_response_t *) tp->body_buffer.pos;

    count = resp->frag_info.frag_count & ~(1 << (sizeof(uint32_t) * 8 - 1));

    t->file.cluster_id = resp->frag_info.cluster_id;

    if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_WRITE_FILE) {
        return NGX_OK;
    }

    if (count == 0) {
        return NGX_DECLINED;
    }

    if (t->file.segment_data == ((void*)0)) {
        t->file.segment_data =
            ngx_pcalloc(t->pool, sizeof(ngx_http_tfs_segment_data_t) * count);
        if (t->file.segment_data == ((void*)0)) {
            return NGX_ERROR;
        }

        t->is_first_segment = NGX_HTTP_TFS_YES;

    } else {

        if (count > t->file.segment_count) {
            t->file.segment_data = ngx_http_tfs_prealloc(t->pool,
                          t->file.segment_data,
                          sizeof(ngx_http_tfs_segment_data_t)
                           * t->file.segment_count,
                          sizeof(ngx_http_tfs_segment_data_t) * count);
            if (t->file.segment_data == ((void*)0)) {
                return NGX_ERROR;
            }
        }

        ngx_memzero(t->file.segment_data,
                    sizeof(ngx_http_tfs_segment_data_t) * count);
    }

    t->file.segment_count = count;
    t->file.still_have = resp->still_have ? :t->has_split_frag;
    t->file.segment_index = 0;

    p = tp->body_buffer.pos + sizeof(ngx_http_tfs_ms_read_response_t);
    fmi = (ngx_http_tfs_meta_frag_meta_info_t *) p;

    for (i = 0; i < count; i++, fmi++) {
        t->file.segment_data[i].segment_info.block_id = fmi->block_id;
        t->file.segment_data[i].segment_info.file_id = fmi->file_id;
        t->file.segment_data[i].segment_info.offset = fmi->offset;
        t->file.segment_data[i].segment_info.size = fmi->size;
        t->file.segment_data[i].oper_size = fmi->size;
    }


    if (t->r_ctx.action.code == NGX_HTTP_TFS_ACTION_READ_FILE) {
        first_segment = &t->file.segment_data[0];
        if (t->is_first_segment) {

            first_segment->oper_offset =
                ngx_max(t->r_ctx.offset, first_segment->segment_info.offset);
            if (first_segment->segment_info.offset > 0) {
                first_segment->oper_offset %=first_segment->segment_info.offset;
            }
            first_segment->oper_size =
                first_segment->segment_info.size - first_segment->oper_offset;
            t->is_first_segment = NGX_HTTP_TFS_NO;
            if (t->r_ctx.chk_file_hole) {
                rc = ngx_array_init(&t->file_holes, t->pool,
                                    NGX_HTTP_TFS_INIT_FILE_HOLE_COUNT,
                                    sizeof(ngx_http_tfs_file_hole_info_t));
                if (rc == NGX_ERROR) {
                    return NGX_ERROR;
                }
            }
        }



        if (!t->file.still_have) {
            last_segment = &t->file.segment_data[count - 1];
            end_offset = t->file.file_offset + t->file.left_length;
            if (end_offset
                > ((uint64_t)last_segment->segment_info.offset
                   + last_segment->oper_offset))
            {
                last_segment->oper_size =
                    ngx_min((end_offset - (last_segment->segment_info.offset
                                           + last_segment->oper_offset)),
                            last_segment->segment_info.size);

            } else {
                last_segment->oper_size = 0;
            }
        }


        if (t->r_ctx.chk_file_hole) {
            segment_data = t->file.segment_data;
            for (i = 0; i < count; i++, segment_data++) {

                if (t->file.file_offset < segment_data->segment_info.offset) {
                    curr_length =
                        ngx_min(t->file.left_length,
                                (uint64_t)(segment_data->segment_info.offset
                                           - t->file.file_offset));
                    file_hole_info = ngx_array_push(&t->file_holes);
                    if (file_hole_info == ((void*)0)) {
                        return NGX_ERROR;
                    }

                    file_hole_info->offset = t->file.file_offset;
                    file_hole_info->length = curr_length;

                    ngx_log_error(NGX_LOG_DEBUG, t->log, 0,
                                  "find file hole, offset: %uL, length: %uL",
                                  file_hole_info->offset,
                                  file_hole_info->length);

                    t->file.file_offset += curr_length;
                    t->file.left_length -= curr_length;
                    if (t->file.left_length == 0) {
                        return NGX_DECLINED;
                    }
                }
                t->file.file_offset += segment_data->oper_size;
                t->file.left_length -= segment_data->oper_size;
                if (t->file.left_length == 0) {
                    return NGX_DECLINED;
                }
            }
            return NGX_OK;
        }
    }
    ngx_log_error(NGX_LOG_DEBUG, t->log, 0,
                  "still_have is %d, frag count is %d",
                  t->file.still_have, count);

    return NGX_OK;
}
