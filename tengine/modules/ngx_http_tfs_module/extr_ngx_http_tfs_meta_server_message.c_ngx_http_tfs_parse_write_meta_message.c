
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int log; TYPE_2__* tfs_peer; scalar_t__ header; } ;
typedef TYPE_1__ ngx_http_tfs_t ;
struct TYPE_6__ {int body_buffer; } ;
typedef TYPE_2__ ngx_http_tfs_peer_connection_t ;
struct TYPE_7__ {int type; } ;
typedef TYPE_3__ ngx_http_tfs_header_t ;


 int NGX_ERROR ;

 int NGX_LOG_WARN ;
 int NGX_OK ;
 int ngx_http_tfs_status_message (int *,int *,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_parse_write_meta_message(ngx_http_tfs_t *t)
{
    uint16_t type;
    ngx_str_t action;
    ngx_http_tfs_header_t *header;
    ngx_http_tfs_peer_connection_t *tp;

    header = (ngx_http_tfs_header_t *) t->header;
    tp = t->tfs_peer;
    type = header->type;

    switch (type) {

    case 128:
        ngx_str_set(&action, "write message (meta server)");
        return ngx_http_tfs_status_message(&tp->body_buffer, &action, t->log);
    default:
        ngx_log_error(NGX_LOG_WARN, t->log, 0,
                      " file type is %d ", type);
        return NGX_ERROR;
    }

    return NGX_OK;
}
