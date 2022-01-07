
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_char ;
struct TYPE_14__ {int len; int data; } ;
struct TYPE_19__ {int user_id; int app_id; } ;
struct TYPE_18__ {int pool; TYPE_3__* loc_conf; int last_file_type; TYPE_1__ last_file_path; int last_file_pid; TYPE_6__ r_ctx; } ;
typedef TYPE_5__ ngx_http_tfs_t ;
typedef TYPE_6__ ngx_http_tfs_restful_ctx_t ;
struct TYPE_17__ {size_t len; int crc; int id; int version; int flag; int type; } ;
struct TYPE_20__ {int file_len; TYPE_4__ header; int file_path; int pid; int user_id; int app_id; } ;
typedef TYPE_7__ ngx_http_tfs_ms_ls_msg_header_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_21__ {int * next; TYPE_9__* buf; } ;
typedef TYPE_8__ ngx_chain_t ;
struct TYPE_22__ {size_t last; scalar_t__ pos; } ;
typedef TYPE_9__ ngx_buf_t ;
struct TYPE_15__ {int version; } ;
struct TYPE_16__ {TYPE_2__ meta_server_table; } ;


 int NGX_HTTP_TFS_LS_FILEPATH_MESSAGE ;
 int NGX_HTTP_TFS_PACKET_FLAG ;
 int NGX_HTTP_TFS_PACKET_VERSION ;
 TYPE_8__* ngx_alloc_chain_link (int ) ;
 int * ngx_cpymem (int ,int ,int) ;
 TYPE_9__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_http_tfs_crc (int ,char const*,size_t) ;
 int ngx_http_tfs_generate_packet_id () ;

__attribute__((used)) static ngx_chain_t *
ngx_http_tfs_create_ls_message(ngx_http_tfs_t *t)
{
    size_t size;
    u_char *p;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_tfs_restful_ctx_t *r_ctx;
    ngx_http_tfs_ms_ls_msg_header_t *req;

    r_ctx = &t->r_ctx;

    size = sizeof(ngx_http_tfs_ms_ls_msg_header_t) +

        t->last_file_path.len +

        1 +

        sizeof(uint8_t) +

        sizeof(uint64_t);

    b = ngx_create_temp_buf(t->pool, size);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    req = (ngx_http_tfs_ms_ls_msg_header_t *) b->pos;
    req->header.type = NGX_HTTP_TFS_LS_FILEPATH_MESSAGE;
    req->header.len = size - sizeof(ngx_http_tfs_header_t);
    req->header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.id = ngx_http_tfs_generate_packet_id();
    req->app_id = r_ctx->app_id;
    req->user_id = r_ctx->user_id;
    req->file_len = t->last_file_path.len + 1;
    req->pid = t->last_file_pid;
    p = ngx_cpymem(req->file_path, t->last_file_path.data,
                   t->last_file_path.len + 1);

    *p = t->last_file_type;
    p += sizeof(uint8_t);

    *((uint64_t *)p) = t->loc_conf->meta_server_table.version;

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
