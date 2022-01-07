
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
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_26__ {int segment_index; } ;
struct TYPE_28__ {TYPE_3__ file; int log; int pool; } ;
typedef TYPE_5__ ngx_http_tfs_t ;
struct TYPE_27__ {int crc; int file_id; int block_id; } ;
struct TYPE_32__ {int ds_count; int version; int lease_id; int * ds_addrs; } ;
struct TYPE_29__ {TYPE_4__ segment_info; TYPE_10__* data; scalar_t__ oper_size; int write_file_number; int oper_offset; TYPE_9__ block_info; } ;
typedef TYPE_6__ ngx_http_tfs_segment_data_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_24__ {int crc; scalar_t__ len; int id; int version; int flag; int type; } ;
struct TYPE_25__ {TYPE_1__ base_header; int file_id; int block_id; } ;
struct TYPE_30__ {TYPE_2__ header; scalar_t__ length; int offset; int file_number; scalar_t__ is_server; } ;
typedef TYPE_7__ ngx_http_tfs_ds_write_request_t ;
struct TYPE_31__ {int crc; int data_crc; } ;
typedef TYPE_8__ ngx_http_tfs_crc_t ;
typedef TYPE_9__ ngx_http_tfs_block_info_t ;
struct TYPE_22__ {struct TYPE_22__* next; TYPE_11__* buf; } ;
typedef TYPE_10__ ngx_chain_t ;
struct TYPE_23__ {int* pos; size_t last; } ;
typedef TYPE_11__ ngx_buf_t ;


 scalar_t__ NGX_ERROR ;
 size_t NGX_HTTP_TFS_MAX_FRAGMENT_SIZE ;
 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 int NGX_HTTP_TFS_WRITE_DATA_MESSAGE ;
 int NGX_LOG_INFO ;
 TYPE_11__* ngx_alloc_buf (int ) ;
 void* ngx_alloc_chain_link (int ) ;
 size_t ngx_buf_size (TYPE_11__*) ;
 TYPE_11__* ngx_create_temp_buf (int ,size_t) ;
 scalar_t__ ngx_http_tfs_compute_buf_crc (TYPE_8__*,TYPE_11__*,size_t,int ) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_generate_packet_id () ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ,int ,int ,scalar_t__,int ) ;
 int ngx_memcpy (TYPE_11__*,TYPE_11__*,int) ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_write_message(ngx_http_tfs_t *t,
    ngx_http_tfs_segment_data_t *segment_data)
{
    u_char *p, exit;
    size_t size, body_size, b_size;
    uint32_t crc;
    ngx_int_t rc;
    ngx_buf_t *b;
    ngx_uint_t i;
    ngx_chain_t *cl, *body, *ch;
    ngx_http_tfs_crc_t t_crc;
    ngx_http_tfs_block_info_t *block_info;
    ngx_http_tfs_ds_write_request_t *req;

    exit = 0;

    block_info = &segment_data->block_info;
    size = sizeof(ngx_http_tfs_ds_write_request_t) +

        sizeof(uint32_t) +

        block_info->ds_count * sizeof(uint64_t) +

        sizeof(uint64_t) * 3 ;

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ds_write_request_t *) b->pos;

    req->header.base_header.type = NGX_HTTP_TFS_WRITE_DATA_MESSAGE;
    req->header.base_header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.base_header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.base_header.id = ngx_http_tfs_generate_packet_id();
    req->header.block_id = segment_data->segment_info.block_id;
    req->header.file_id = segment_data->segment_info.file_id;
    req->offset = segment_data->oper_offset;
    req->is_server = 0;
    req->file_number = segment_data->write_file_number;

    p = b->pos + sizeof(ngx_http_tfs_ds_write_request_t);


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
    b->last += size;

    req->length = segment_data->oper_size;

    crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
                           (const char *) (&req->header.base_header + 1),
                           (size - sizeof(ngx_http_tfs_header_t)));

    cl = ngx_alloc_chain_link(t->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }
    ch = cl;
    cl->buf = b;

    body_size = 0;
    body = segment_data->data;

    t_crc.crc = crc;
    t_crc.data_crc = segment_data->segment_info.crc;




    while (body) {
        b_size = ngx_buf_size(body->buf);
        body_size += b_size;

        b = ngx_alloc_buf(t->pool);
        if (b == ((void*)0)) {
            return ((void*)0);
        }

        ngx_memcpy(b, body->buf, sizeof(ngx_buf_t));

        if (body_size > NGX_HTTP_TFS_MAX_FRAGMENT_SIZE) {

            body_size -= b_size;
            b_size = NGX_HTTP_TFS_MAX_FRAGMENT_SIZE - body_size;
            body_size = NGX_HTTP_TFS_MAX_FRAGMENT_SIZE;
            exit = 1;
        }

        rc = ngx_http_tfs_compute_buf_crc(&t_crc, b, b_size, t->log);
        if (rc == NGX_ERROR) {
            return ((void*)0);
        }

        cl->next = ngx_alloc_chain_link(t->pool);
        if (cl->next == ((void*)0)) {
            return ((void*)0);
        }

        cl = cl->next;
        cl->buf = b;

        if (exit) {
            break;
        }

        body = body->next;
    }
    cl->next = ((void*)0);

    ngx_log_error(NGX_LOG_INFO, t->log, 0,
                  "write segment index %uD, block id: %uD, file id: %uL, "
                  "offset: %D, length: %uD, crc: %uD",
                  t->file.segment_index, segment_data->segment_info.block_id,
                  segment_data->segment_info.file_id, req->offset,
                  req->length, t_crc.data_crc);

    segment_data->segment_info.crc = t_crc.data_crc;
    req->header.base_header.len = size - sizeof(ngx_http_tfs_header_t)
                                   + req->length;
    req->header.base_header.crc = t_crc.crc;

    return ch;
}
