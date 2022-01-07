
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ngx_pool_t ;
struct TYPE_8__ {int len; int id; int crc; int version; int type; int flag; } ;
struct TYPE_9__ {TYPE_1__ header; } ;
typedef TYPE_2__ ngx_http_tfs_rs_request_t ;
struct TYPE_10__ {int * next; TYPE_4__* buf; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_11__ {int last; scalar_t__ pos; } ;
typedef TYPE_4__ ngx_buf_t ;


 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 int NGX_HTTP_TFS_REQ_RT_GET_TABLE_MESSAGE ;
 TYPE_3__* ngx_alloc_chain_link (int *) ;
 TYPE_4__* ngx_create_temp_buf (int *,int) ;
 int ngx_http_tfs_crc (int ,char const*,int) ;
 int ngx_http_tfs_generate_packet_id () ;

ngx_chain_t *
ngx_http_tfs_root_server_create_message(ngx_pool_t *pool)
{
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_tfs_rs_request_t *req;

    b = ngx_create_temp_buf(pool, sizeof(ngx_http_tfs_rs_request_t));
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_rs_request_t *) b->pos;
    req->header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.len = sizeof(uint8_t);
    req->header.type = NGX_HTTP_TFS_REQ_RT_GET_TABLE_MESSAGE;
    req->header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
                                       (const char *) (&req->header + 1),
                                       req->header.len);
    req->header.id = ngx_http_tfs_generate_packet_id();

    b->last += sizeof(ngx_http_tfs_rs_request_t);

    cl = ngx_alloc_chain_link(pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = b;
    cl->next = ((void*)0);

    return cl;
}
