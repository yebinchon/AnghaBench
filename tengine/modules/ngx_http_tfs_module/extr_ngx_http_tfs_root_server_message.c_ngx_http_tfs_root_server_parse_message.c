
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uLongf ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {TYPE_2__* loc_conf; int log; TYPE_6__* tfs_peer; } ;
typedef TYPE_4__ ngx_http_tfs_t ;
struct TYPE_12__ {int version; int length; int table; } ;
typedef TYPE_5__ ngx_http_tfs_rs_response_t ;
struct TYPE_10__ {scalar_t__ pos; } ;
struct TYPE_13__ {TYPE_3__ body_buffer; } ;
typedef TYPE_6__ ngx_http_tfs_peer_connection_t ;
struct TYPE_8__ {int version; scalar_t__ table; } ;
struct TYPE_9__ {TYPE_1__ meta_server_table; } ;
typedef int Bytef ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_TFS_METASERVER_COUNT ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ Z_OK ;
 int errno ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ uncompress (int *,int*,int ,int ) ;

ngx_int_t
ngx_http_tfs_root_server_parse_message(ngx_http_tfs_t *t)
{
    uLongf table_length;
    ngx_int_t rc;
    ngx_http_tfs_rs_response_t *resp;
    ngx_http_tfs_peer_connection_t *tp;

    tp = t->tfs_peer;
    resp = (ngx_http_tfs_rs_response_t *) (tp->body_buffer.pos);
    table_length = NGX_HTTP_TFS_METASERVER_COUNT * sizeof(uint64_t);

    rc = uncompress((Bytef *) (t->loc_conf->meta_server_table.table),
                    &table_length, resp->table, resp->length);
    if (rc != Z_OK) {
        ngx_log_error(NGX_LOG_ERR, t->log, errno, "uncompress error");
        return NGX_ERROR;
    }

    t->loc_conf->meta_server_table.version = resp->version;

    return NGX_OK;
}
