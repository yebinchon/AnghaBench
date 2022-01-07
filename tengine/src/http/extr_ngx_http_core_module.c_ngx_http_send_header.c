
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_8__ {scalar_t__ len; } ;
struct TYPE_9__ {TYPE_2__ status_line; scalar_t__ status; } ;
struct TYPE_10__ {TYPE_3__ headers_out; scalar_t__ err_status; TYPE_1__* connection; scalar_t__ header_sent; scalar_t__ post_action; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_7__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int ngx_http_top_header_filter (TYPE_4__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_http_send_header(ngx_http_request_t *r)
{
    if (r->post_action) {
        return NGX_OK;
    }

    if (r->header_sent) {
        ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                      "header already sent");
        return NGX_ERROR;
    }

    if (r->err_status) {
        r->headers_out.status = r->err_status;
        r->headers_out.status_line.len = 0;
    }

    return ngx_http_top_header_filter(r);
}
