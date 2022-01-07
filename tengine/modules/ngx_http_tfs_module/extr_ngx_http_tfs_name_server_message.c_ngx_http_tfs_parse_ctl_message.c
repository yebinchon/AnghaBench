
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int cluster_id; } ;
struct TYPE_9__ {int group_count; int group_seq; int log; TYPE_2__ file; TYPE_5__* tfs_peer; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
struct TYPE_10__ {scalar_t__ code; scalar_t__ error_len; int error_str; } ;
typedef TYPE_4__ ngx_http_tfs_status_msg_t ;
struct TYPE_7__ {scalar_t__ pos; } ;
struct TYPE_11__ {TYPE_1__ body_buffer; } ;
typedef TYPE_5__ ngx_http_tfs_peer_connection_t ;


 int NGX_ERROR ;



 scalar_t__ NGX_HTTP_TFS_STATUS_MESSAGE_OK ;
 int NGX_LOG_ERR ;
 int NGX_LOG_WARN ;
 int NGX_OK ;
 void* ngx_atoi (int ,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_parse_ctl_message(ngx_http_tfs_t *t, uint8_t cmd)
{
    uint32_t code;
    ngx_int_t cluster_id;
    ngx_http_tfs_status_msg_t *res;
    ngx_http_tfs_peer_connection_t *tp;

    tp = t->tfs_peer;
    res = (ngx_http_tfs_status_msg_t *) tp->body_buffer.pos;
    code = res->code;

    if (code == NGX_HTTP_TFS_STATUS_MESSAGE_OK && res->error_len > 0) {
        switch(cmd) {
        case 130:
            cluster_id = ngx_atoi(res->error_str, res->error_len - 1);
            cluster_id = cluster_id - '0';

            if (cluster_id == NGX_ERROR) {
                ngx_log_error(NGX_LOG_ERR, t->log, 0,
                              "invalid cluster id \"%s\" ", res->error_str);
                return NGX_ERROR;
            }

            t->file.cluster_id = cluster_id;
            break;
        case 129:
            t->group_count = ngx_atoi(res->error_str, res->error_len - 1);
            if (t->group_count == NGX_ERROR || t->group_count <= 0) {
                ngx_log_error(NGX_LOG_WARN, t->log, 0,
                              "invalid  group count \"%s\" ", res->error_str);
                t->group_count = 1;
            }
            break;
        case 128:
            t->group_seq = ngx_atoi(res->error_str, res->error_len - 1);
            if (t->group_seq == NGX_ERROR || t->group_seq < 0) {
                ngx_log_error(NGX_LOG_WARN, t->log, 0,
                              "invalid  group seq \"%s\" ", res->error_str);
                t->group_seq = 0;
            }
        }

    } else {
        ngx_log_error(NGX_LOG_ERR, t->log, 0,
                      "tfs name server ctl message invalid");
        return NGX_ERROR;
    }

    return NGX_OK;
}
