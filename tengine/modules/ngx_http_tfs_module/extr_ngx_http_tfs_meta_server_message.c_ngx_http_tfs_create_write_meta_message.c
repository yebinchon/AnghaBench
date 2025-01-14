
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int uint64_t ;
typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_30__ {int segment_index; size_t last_write_segment_index; TYPE_9__* segment_data; int cluster_id; } ;
struct TYPE_25__ {int len; int data; } ;
struct TYPE_20__ {TYPE_1__ file_path_s; int user_id; int app_id; } ;
struct TYPE_32__ {int pool; TYPE_6__ file; int log; TYPE_3__* loc_conf; TYPE_10__ r_ctx; } ;
typedef TYPE_8__ ngx_http_tfs_t ;
struct TYPE_29__ {int size; int offset; int file_id; int block_id; } ;
struct TYPE_33__ {TYPE_5__ segment_info; } ;
typedef TYPE_9__ ngx_http_tfs_segment_data_t ;
typedef TYPE_10__ ngx_http_tfs_restful_ctx_t ;
struct TYPE_31__ {size_t len; int crc; int id; int version; int flag; int type; } ;
struct TYPE_21__ {int file_len; TYPE_7__ header; int file_path_s; int user_id; int app_id; } ;
typedef TYPE_11__ ngx_http_tfs_ms_base_msg_header_t ;
typedef int ngx_http_tfs_meta_frag_meta_info_t ;
struct TYPE_22__ {int frag_count; TYPE_4__* frag_meta; int cluster_id; } ;
typedef TYPE_12__ ngx_http_tfs_meta_frag_info_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_23__ {int * next; TYPE_14__* buf; } ;
typedef TYPE_13__ ngx_chain_t ;
struct TYPE_24__ {size_t last; scalar_t__ pos; } ;
typedef TYPE_14__ ngx_buf_t ;
struct TYPE_28__ {int size; int offset; int file_id; int block_id; } ;
struct TYPE_26__ {int version; } ;
struct TYPE_27__ {TYPE_2__ meta_server_table; } ;


 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 int NGX_HTTP_TFS_WRITE_FILEPATH_MESSAGE ;
 int NGX_LOG_DEBUG_HTTP ;
 TYPE_13__* ngx_alloc_chain_link (int ) ;
 int * ngx_cpymem (int ,int ,int) ;
 TYPE_14__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_dump_segment_data (TYPE_9__*,int ) ;
 int ngx_http_tfs_generate_packet_id () ;
 int ngx_log_debug2 (int ,int ,int ,char*,size_t,int) ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_write_meta_message(ngx_http_tfs_t *t)
{
    u_char *p;
    size_t size, frag_size;
    ngx_buf_t *b;
    ngx_int_t need_write_frag_count, i;
    ngx_chain_t *cl;
    ngx_http_tfs_restful_ctx_t *r_ctx;
    ngx_http_tfs_segment_data_t *segment_data;
    ngx_http_tfs_meta_frag_info_t *wfi;
    ngx_http_tfs_ms_base_msg_header_t *req;

    r_ctx = &t->r_ctx;
    need_write_frag_count =
        t->file.segment_index - t->file.last_write_segment_index;
    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, t->log, 0 ,
                   "last_write_segment_index: %uD, segment_index: %uD",
                   t->file.last_write_segment_index, t->file.segment_index);

    frag_size = sizeof(ngx_http_tfs_meta_frag_info_t) +
        sizeof(ngx_http_tfs_meta_frag_meta_info_t) * need_write_frag_count;

    size = sizeof(ngx_http_tfs_ms_base_msg_header_t) +
        r_ctx->file_path_s.len + 1 +

        sizeof(uint64_t) +
        frag_size;

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ms_base_msg_header_t *) b->pos;
    req->header.type = NGX_HTTP_TFS_WRITE_FILEPATH_MESSAGE;
    req->header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.id = ngx_http_tfs_generate_packet_id();
    req->app_id = r_ctx->app_id;
    req->user_id = r_ctx->user_id;
    req->file_len = r_ctx->file_path_s.len + 1;
    p = ngx_cpymem(req->file_path_s, r_ctx->file_path_s.data,
                   r_ctx->file_path_s.len + 1);

    *((uint64_t *)p) = t->loc_conf->meta_server_table.version;

    wfi = (ngx_http_tfs_meta_frag_info_t*)(p + sizeof(uint64_t));
    wfi->cluster_id = t->file.cluster_id;
    wfi->frag_count = need_write_frag_count;
    segment_data = &t->file.segment_data[t->file.last_write_segment_index];
    for (i = 0; i < need_write_frag_count; i++) {



        wfi->frag_meta[i].block_id = segment_data->segment_info.block_id;
        wfi->frag_meta[i].file_id = segment_data->segment_info.file_id;
        wfi->frag_meta[i].offset = segment_data->segment_info.offset;
        wfi->frag_meta[i].size = segment_data->segment_info.size;
        segment_data++;
    }
    t->file.last_write_segment_index += need_write_frag_count;

    b->last += size;

    req->header.len = size - sizeof(ngx_http_tfs_header_t);
    req->header.crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
                                       (const char *) (&req->header + 1),
                                       size - sizeof(ngx_http_tfs_header_t));

    cl = ngx_alloc_chain_link(t->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = b;
    cl->next = ((void*)0);

    return cl;
}
