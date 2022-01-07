
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


struct TYPE_16__ {int read_stat_type; } ;
struct TYPE_19__ {int pool; TYPE_2__ r_ctx; } ;
typedef TYPE_5__ ngx_http_tfs_t ;
struct TYPE_15__ {int file_id; int block_id; } ;
struct TYPE_20__ {TYPE_1__ segment_info; } ;
typedef TYPE_6__ ngx_http_tfs_segment_data_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_17__ {size_t len; int crc; int id; int version; int flag; int type; } ;
struct TYPE_18__ {TYPE_3__ base_header; int file_id; int block_id; } ;
struct TYPE_21__ {TYPE_4__ header; int mode; } ;
typedef TYPE_7__ ngx_http_tfs_ds_stat_request_t ;
struct TYPE_22__ {int * next; TYPE_9__* buf; } ;
typedef TYPE_8__ ngx_chain_t ;
struct TYPE_23__ {size_t last; scalar_t__ pos; } ;
typedef TYPE_9__ ngx_buf_t ;


 int NGX_HTTP_TFS_FILE_INFO_MESSAGE ;
 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 TYPE_8__* ngx_alloc_chain_link (int ) ;
 TYPE_9__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_generate_packet_id () ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_stat_message(ngx_http_tfs_t *t,
    ngx_http_tfs_segment_data_t *segment_data)
{
    size_t size;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_tfs_ds_stat_request_t *req;

    size = sizeof(ngx_http_tfs_ds_stat_request_t);

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ds_stat_request_t *) b->pos;

    req->header.base_header.type = NGX_HTTP_TFS_FILE_INFO_MESSAGE;
    req->header.base_header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.base_header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.base_header.id = ngx_http_tfs_generate_packet_id();
    req->header.base_header.len = size - sizeof(ngx_http_tfs_header_t);
    req->header.block_id = segment_data->segment_info.block_id;
    req->header.file_id = segment_data->segment_info.file_id;
    req->mode = t->r_ctx.read_stat_type;

    req->header.base_header.crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
                                  (const char *) (&req->header.base_header + 1),
                                  (size - sizeof(ngx_http_tfs_header_t)));

    b->last += size;

    cl = ngx_alloc_chain_link(t->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }
    cl->buf = b;
    cl->next = ((void*)0);

    return cl;
}
