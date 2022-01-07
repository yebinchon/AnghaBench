
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int pool; } ;
typedef TYPE_2__ ngx_http_tfs_t ;
struct TYPE_10__ {size_t len; int crc; int id; int version; int flag; int type; } ;
struct TYPE_12__ {TYPE_1__ header; int value2; int cmd; } ;
typedef TYPE_3__ ngx_http_tfs_ns_ctl_request_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_13__ {int * next; TYPE_5__* buf; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_14__ {size_t last; scalar_t__ pos; } ;
typedef TYPE_5__ ngx_buf_t ;


 int NGX_HTTP_TFS_CLIENT_CMD_MESSAGE ;
 int NGX_HTTP_TFS_CLIENT_CMD_SET_PARAM ;
 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 TYPE_4__* ngx_alloc_chain_link (int ) ;
 TYPE_5__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_generate_packet_id () ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_ctl_message(ngx_http_tfs_t *t, uint8_t cmd)
{
    size_t size;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_tfs_ns_ctl_request_t *req;

    size = sizeof(ngx_http_tfs_ns_ctl_request_t);

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ns_ctl_request_t *) b->pos;
    req->header.type = NGX_HTTP_TFS_CLIENT_CMD_MESSAGE;
    req->header.len = size - sizeof(ngx_http_tfs_header_t);
    req->header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.id = ngx_http_tfs_generate_packet_id();
    req->cmd = NGX_HTTP_TFS_CLIENT_CMD_SET_PARAM;
    req->value2 = cmd;

    req->header.crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
                                       (const char *) (&req->header + 1),
                                       req->header.len);

    b->last += size;

    cl = ngx_alloc_chain_link(t->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = b;
    cl->next = ((void*)0);

    return cl;
}
