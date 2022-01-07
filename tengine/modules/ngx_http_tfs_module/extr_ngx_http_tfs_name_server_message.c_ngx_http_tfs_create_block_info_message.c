
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int open_mode; } ;
struct TYPE_17__ {int pool; TYPE_1__ file; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
struct TYPE_15__ {int block_id; } ;
struct TYPE_18__ {TYPE_2__ segment_info; } ;
typedef TYPE_5__ ngx_http_tfs_segment_data_t ;
struct TYPE_16__ {size_t len; int crc; int id; int version; int flag; int type; } ;
struct TYPE_19__ {TYPE_3__ header; scalar_t__ fs_count; int block_id; int mode; } ;
typedef TYPE_6__ ngx_http_tfs_ns_block_info_request_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_20__ {int * next; TYPE_8__* buf; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_21__ {size_t last; scalar_t__ pos; } ;
typedef TYPE_8__ ngx_buf_t ;


 int NGX_HTTP_TFS_GET_BLOCK_INFO_MESSAGE ;
 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 TYPE_7__* ngx_alloc_chain_link (int ) ;
 TYPE_8__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_generate_packet_id () ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_block_info_message(ngx_http_tfs_t *t,
    ngx_http_tfs_segment_data_t *segment_data)
{
    size_t size;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_tfs_ns_block_info_request_t *req;

    size = sizeof(ngx_http_tfs_ns_block_info_request_t);

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ns_block_info_request_t *) b->pos;

    req->header.type = NGX_HTTP_TFS_GET_BLOCK_INFO_MESSAGE;
    req->header.len = size - sizeof(ngx_http_tfs_header_t);
    req->header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.id = ngx_http_tfs_generate_packet_id();
    req->mode = t->file.open_mode;
    req->block_id = segment_data->segment_info.block_id;
    req->fs_count = 0;

    req->header.crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
        (const char *) (&req->header + 1), req->header.len);

    b->last += size;

    cl = ngx_alloc_chain_link(t->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = b;
    cl->next = ((void*)0);

    return cl;
}
