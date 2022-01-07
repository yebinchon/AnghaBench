
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_20__ {int s_addr; } ;
struct sockaddr_in {TYPE_5__ sin_addr; } ;
struct TYPE_16__ {int len; int * data; } ;
struct TYPE_17__ {TYPE_1__ appkey; } ;
struct TYPE_22__ {int pool; TYPE_4__* loc_conf; TYPE_2__ r_ctx; } ;
typedef TYPE_7__ ngx_http_tfs_t ;
struct TYPE_21__ {scalar_t__ len; int crc; int id; int version; int type; int flag; } ;
struct TYPE_23__ {TYPE_6__ header; scalar_t__ appkey_len; } ;
typedef TYPE_8__ ngx_http_tfs_rcs_login_msg_header_t ;
struct TYPE_24__ {int * next; TYPE_10__* buf; } ;
typedef TYPE_9__ ngx_chain_t ;
struct TYPE_15__ {char* last; scalar_t__ pos; } ;
typedef TYPE_10__ ngx_buf_t ;
struct TYPE_19__ {TYPE_3__* upstream; } ;
struct TYPE_18__ {struct sockaddr_in local_addr; } ;


 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 int NGX_HTTP_TFS_REQ_RC_LOGIN_MESSAGE ;
 TYPE_9__* ngx_alloc_chain_link (int ) ;
 TYPE_10__* ngx_create_temp_buf (int ,scalar_t__) ;
 int ngx_http_tfs_crc (int ,char const*,scalar_t__) ;
 int ngx_http_tfs_generate_packet_id () ;
 int ngx_memcpy (char*,int *,int) ;

ngx_chain_t *
ngx_http_tfs_create_login_message(ngx_http_tfs_t *t)
{
    ngx_buf_t *b;
    ngx_chain_t *cl;
    struct sockaddr_in *addr;
    ngx_http_tfs_rcs_login_msg_header_t *req;

    b = ngx_create_temp_buf(t->pool,
                            sizeof(ngx_http_tfs_rcs_login_msg_header_t)
                             + sizeof(uint64_t) + t->r_ctx.appkey.len + 1);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_rcs_login_msg_header_t *) b->pos;
    req->header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.len = sizeof(uint64_t) + t->r_ctx.appkey.len
                       + sizeof(uint32_t) + 1;
    req->header.type = NGX_HTTP_TFS_REQ_RC_LOGIN_MESSAGE;
    req->header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.id = ngx_http_tfs_generate_packet_id();

    req->appkey_len = t->r_ctx.appkey.len + 1;

    b->last += sizeof(ngx_http_tfs_rcs_login_msg_header_t);


    ngx_memcpy(b->last, t->r_ctx.appkey.data, t->r_ctx.appkey.len);
    b->last += t->r_ctx.appkey.len;
    *(b->last) = '\0';
    b->last += 1;


    addr = &(t->loc_conf->upstream->local_addr);
    ngx_memcpy(b->last, &(addr->sin_addr.s_addr), sizeof(uint64_t));
    b->last += sizeof(uint64_t);

    req->header.crc = ngx_http_tfs_crc(NGX_HTTP_TFS_PACKET_FLAG,
                                       (const char *) (&req->header + 1),
                                       req->header.len);

    cl = ngx_alloc_chain_link(t->pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = b;
    cl->next = ((void*)0);

    return cl;
}
