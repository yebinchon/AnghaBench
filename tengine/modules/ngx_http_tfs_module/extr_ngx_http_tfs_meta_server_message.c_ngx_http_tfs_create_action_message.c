
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
struct TYPE_22__ {int len; int * data; } ;
typedef TYPE_5__ ngx_str_t ;
struct TYPE_20__ {int code; } ;
struct TYPE_24__ {TYPE_3__ action; int user_id; int app_id; } ;
struct TYPE_23__ {int pool; TYPE_2__* loc_conf; TYPE_7__ r_ctx; } ;
typedef TYPE_6__ ngx_http_tfs_t ;
typedef TYPE_7__ ngx_http_tfs_restful_ctx_t ;
struct TYPE_21__ {size_t len; int crc; int id; int version; int flag; int type; } ;
struct TYPE_25__ {int file_len; TYPE_4__ header; int * file_path_s; int user_id; int app_id; } ;
typedef TYPE_8__ ngx_http_tfs_ms_base_msg_header_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_26__ {int * next; TYPE_10__* buf; } ;
typedef TYPE_9__ ngx_chain_t ;
struct TYPE_17__ {size_t last; scalar_t__ pos; } ;
typedef TYPE_10__ ngx_buf_t ;
struct TYPE_18__ {int version; } ;
struct TYPE_19__ {TYPE_1__ meta_server_table; } ;


 int NGX_HTTP_TFS_FILEPATH_ACTION_MESSAGE ;
 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 TYPE_9__* ngx_alloc_chain_link (int ) ;
 int * ngx_cpymem (int *,int *,int) ;
 TYPE_10__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_generate_packet_id () ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_action_message(ngx_http_tfs_t *t, ngx_str_t *file_path_s,
    ngx_str_t *file_path_d)
{
    size_t size;
    u_char *p;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_tfs_restful_ctx_t *r_ctx;
    ngx_http_tfs_ms_base_msg_header_t *req;

    r_ctx = &t->r_ctx;

    size = sizeof(ngx_http_tfs_ms_base_msg_header_t) +

        file_path_s->len +

        sizeof(uint64_t) +

        sizeof(uint32_t) +

        1 +

        sizeof(uint8_t);

    if (file_path_d != ((void*)0) && file_path_d->data != ((void*)0)) {
        size += file_path_d->len + 1;
    }

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ms_base_msg_header_t *) b->pos;
    req->header.type = NGX_HTTP_TFS_FILEPATH_ACTION_MESSAGE;
    req->header.len = size - sizeof(ngx_http_tfs_header_t);
    req->header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.id = ngx_http_tfs_generate_packet_id();
    req->app_id = r_ctx->app_id;
    req->user_id = r_ctx->user_id;
    req->file_len = file_path_s->len + 1;
    p = ngx_cpymem(req->file_path_s, file_path_s->data, file_path_s->len + 1);

    *((uint64_t *)p) = t->loc_conf->meta_server_table.version;
    p += sizeof(uint64_t);

    if (file_path_d != ((void*)0) && file_path_d->data != ((void*)0)) {

        *((uint32_t *)p) = file_path_d->len + 1;
        p += sizeof(uint32_t);
        p = ngx_cpymem(p, file_path_d->data, file_path_d->len + 1);

    } else {
        *((uint32_t *)p) = 0;
        p += sizeof(uint32_t);
    }


    *p = r_ctx->action.code;

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
