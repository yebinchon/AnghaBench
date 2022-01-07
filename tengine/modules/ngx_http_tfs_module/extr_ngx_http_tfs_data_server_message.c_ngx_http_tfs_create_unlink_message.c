
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_23__ {int version; int unlink_type; } ;
struct TYPE_21__ {int segment_index; } ;
struct TYPE_24__ {int pool; TYPE_5__ r_ctx; TYPE_3__ file; int log; } ;
typedef TYPE_6__ ngx_http_tfs_t ;
struct TYPE_22__ {int file_id; int block_id; } ;
struct TYPE_27__ {int ds_count; int version; int lease_id; int * ds_addrs; } ;
struct TYPE_25__ {TYPE_4__ segment_info; TYPE_9__ block_info; } ;
typedef TYPE_7__ ngx_http_tfs_segment_data_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_19__ {size_t len; int crc; int id; int version; int flag; int type; } ;
struct TYPE_20__ {TYPE_1__ base_header; int file_id; int block_id; } ;
struct TYPE_26__ {TYPE_2__ header; int server_mode; } ;
typedef TYPE_8__ ngx_http_tfs_ds_unlink_request_t ;
typedef TYPE_9__ ngx_http_tfs_block_info_t ;
struct TYPE_17__ {TYPE_11__* buf; int * next; } ;
typedef TYPE_10__ ngx_chain_t ;
struct TYPE_18__ {size_t last; int * pos; } ;
typedef TYPE_11__ ngx_buf_t ;


 int NGX_HTTP_TFS_FILE_DEFAULT_OPTION ;
 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 int NGX_HTTP_TFS_REMOVE_FILE_MASTER ;
 int NGX_HTTP_TFS_UNLINK_DELETE ;
 int NGX_HTTP_TFS_UNLINK_FILE_MESSAGE ;
 int NGX_LOG_INFO ;
 TYPE_10__* ngx_alloc_chain_link (int ) ;
 TYPE_11__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_generate_packet_id () ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_unlink_message(ngx_http_tfs_t *t,
    ngx_http_tfs_segment_data_t *segment_data)
{
    u_char *p;
    size_t size;
    ngx_buf_t *b;
    ngx_uint_t i;
    ngx_chain_t *cl;
    ngx_http_tfs_block_info_t *block_info;
    ngx_http_tfs_ds_unlink_request_t *req;

    block_info = &segment_data->block_info;
    size = sizeof(ngx_http_tfs_ds_unlink_request_t) +

        sizeof(uint32_t) +

        block_info->ds_count * sizeof(uint64_t) +

        sizeof(uint64_t) * 3 +

        sizeof(uint32_t);

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ds_unlink_request_t *) b->pos;

    req->header.base_header.type = NGX_HTTP_TFS_UNLINK_FILE_MESSAGE;
    req->header.base_header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.base_header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.base_header.id = ngx_http_tfs_generate_packet_id();
    req->header.base_header.len = size - sizeof(ngx_http_tfs_header_t);
    req->header.block_id = segment_data->segment_info.block_id;
    req->header.file_id = segment_data->segment_info.file_id;
    req->server_mode = NGX_HTTP_TFS_REMOVE_FILE_MASTER;
    if (t->r_ctx.version == 1) {
        req->server_mode |= t->r_ctx.unlink_type;

    } else if (t->r_ctx.version == 2) {
        req->server_mode |= NGX_HTTP_TFS_UNLINK_DELETE;
    }

    p = b->pos + sizeof(ngx_http_tfs_ds_unlink_request_t);


    *((uint32_t *) p) = 3 + block_info->ds_count;
    p += sizeof(uint32_t);

    for (i = 0; i < block_info->ds_count; i++) {
        *((uint64_t *) p) = *((uint64_t *)&block_info->ds_addrs[i]);
        p += sizeof(uint64_t);
    }


    *((uint64_t *) p) = -1;
    p += sizeof(uint64_t);

    *((uint64_t *) p) = block_info->version;
    p += sizeof(uint64_t);

    *((uint64_t *) p) = block_info->lease_id;
    p += sizeof(uint64_t);


    *((uint32_t *) p) = NGX_HTTP_TFS_FILE_DEFAULT_OPTION;

    req->header.base_header.crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
                                  (const char *) (&req->header.base_header + 1),
                                  (size - sizeof(ngx_http_tfs_header_t)));

    b->last += size;

    ngx_log_error(NGX_LOG_INFO, t->log, 0,
                  "unlink segment index %uD, block id: %uD, "
                  "file id: %uL, type: %i",
                  t->file.segment_index,
                  segment_data->segment_info.block_id,
                  segment_data->segment_info.file_id, t->r_ctx.unlink_type);

    cl = ngx_alloc_chain_link(t->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }
    cl->next = ((void*)0);
    cl->buf = b;
    return cl;
}
