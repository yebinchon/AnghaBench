
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_18__ {int pool; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
struct TYPE_15__ {int crc; int file_id; int block_id; } ;
struct TYPE_21__ {int ds_count; int version; int lease_id; int * ds_addrs; } ;
struct TYPE_19__ {int write_file_number; TYPE_1__ segment_info; TYPE_7__ block_info; } ;
typedef TYPE_5__ ngx_http_tfs_segment_data_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_16__ {size_t len; int crc; int id; int version; int flag; int type; } ;
struct TYPE_17__ {TYPE_2__ base_header; int file_id; int block_id; } ;
struct TYPE_20__ {TYPE_3__ header; int file_number; int crc; int mode; } ;
typedef TYPE_6__ ngx_http_tfs_ds_close_request_t ;
typedef TYPE_7__ ngx_http_tfs_block_info_t ;
struct TYPE_22__ {TYPE_9__* buf; int * next; } ;
typedef TYPE_8__ ngx_chain_t ;
struct TYPE_23__ {size_t last; int * pos; } ;
typedef TYPE_9__ ngx_buf_t ;


 int NGX_HTTP_TFS_CLOSE_FILE_MASTER ;
 int NGX_HTTP_TFS_CLOSE_FILE_MESSAGE ;
 int NGX_HTTP_TFS_FILE_DEFAULT_OPTION ;
 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 TYPE_8__* ngx_alloc_chain_link (int ) ;
 TYPE_9__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_generate_packet_id () ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_closefile_message(ngx_http_tfs_t *t,
    ngx_http_tfs_segment_data_t *segment_data)
{
    u_char *p;
    size_t size;
    ngx_buf_t *b;
    ngx_uint_t i;
    ngx_chain_t *cl;
    ngx_http_tfs_block_info_t *block_info;
    ngx_http_tfs_ds_close_request_t *req;

    block_info = &segment_data->block_info;
    size = sizeof(ngx_http_tfs_ds_close_request_t) +

        sizeof(uint32_t) +

        block_info->ds_count * sizeof(uint64_t) +

        sizeof(uint64_t) * 3 +

        sizeof(uint32_t) * 2 +

        sizeof(uint32_t);

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ds_close_request_t *) b->pos;

    req->header.base_header.type = NGX_HTTP_TFS_CLOSE_FILE_MESSAGE;
    req->header.base_header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.base_header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.base_header.id = ngx_http_tfs_generate_packet_id();
    req->header.base_header.len = size - sizeof(ngx_http_tfs_header_t);
    req->header.block_id = segment_data->segment_info.block_id;
    req->header.file_id = segment_data->segment_info.file_id;
    req->mode = NGX_HTTP_TFS_CLOSE_FILE_MASTER;
    req->crc = segment_data->segment_info.crc;
    req->file_number = segment_data->write_file_number;

    p = b->pos + sizeof(ngx_http_tfs_ds_close_request_t);


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


    *((uint32_t *) p) = 0;
    p += sizeof(uint32_t);

    *((uint32_t *) p) = 0;
    p += sizeof(uint32_t);

    *((uint32_t *) p) = NGX_HTTP_TFS_FILE_DEFAULT_OPTION;

    req->header.base_header.crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
                                  (const char *) (&req->header.base_header + 1),
                                  (size - sizeof(ngx_http_tfs_header_t)));

    b->last += size;

    cl = ngx_alloc_chain_link(t->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }
    cl->next = ((void*)0);
    cl->buf = b;
    return cl;
}
