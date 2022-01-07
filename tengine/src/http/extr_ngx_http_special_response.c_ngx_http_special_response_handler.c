
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_22__ {scalar_t__ msie; } ;
struct TYPE_19__ {scalar_t__ len; } ;
struct TYPE_20__ {TYPE_2__ content_type; } ;
struct TYPE_23__ {int err_status; int error_page; scalar_t__ uri_changes; int expect_tested; TYPE_5__ headers_in; scalar_t__ keepalive; TYPE_3__ headers_out; scalar_t__ lingering_close; int args; int uri; TYPE_1__* connection; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_24__ {int status; } ;
typedef TYPE_7__ ngx_http_err_page_t ;
struct TYPE_25__ {scalar_t__ recursive_error_pages; scalar_t__ msie_refresh; TYPE_4__* error_pages; } ;
typedef TYPE_8__ ngx_http_core_loc_conf_t ;
struct TYPE_21__ {size_t nelts; TYPE_7__* elts; } ;
struct TYPE_18__ {int log; } ;





 int NGX_HTTP_CREATED ;

 int NGX_HTTP_LAST_3XX ;
 int NGX_HTTP_LAST_4XX ;
 int NGX_HTTP_LAST_5XX ;
 int NGX_HTTP_MOVED_PERMANENTLY ;
 int NGX_HTTP_MOVED_TEMPORARILY ;
 int NGX_HTTP_NGINX_CODES ;

 int NGX_HTTP_NO_CONTENT ;
 int NGX_HTTP_OFF_3XX ;
 int NGX_HTTP_OFF_4XX ;
 int NGX_HTTP_OFF_5XX ;




 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int ngx_http_core_module ;
 scalar_t__ ngx_http_discard_request_body (TYPE_6__*) ;
 TYPE_8__* ngx_http_get_module_loc_conf (TYPE_6__*,int ) ;
 int ngx_http_send_error_page (TYPE_6__*,TYPE_7__*) ;
 int ngx_http_send_refresh (TYPE_6__*) ;
 int ngx_http_send_special_response (TYPE_6__*,TYPE_8__*,size_t) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,int *,int *) ;

ngx_int_t
ngx_http_special_response_handler(ngx_http_request_t *r, ngx_int_t error)
{
    ngx_uint_t i, err;
    ngx_http_err_page_t *err_page;
    ngx_http_core_loc_conf_t *clcf;

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http special response: %i, \"%V?%V\"",
                   error, &r->uri, &r->args);

    r->err_status = error;

    if (r->keepalive) {
        switch (error) {
            case 134:
            case 131:
            case 129:
            case 128:
            case 136:
            case 135:
            case 133:
            case 132:
                r->keepalive = 0;
        }
    }

    if (r->lingering_close) {
        switch (error) {
            case 134:
            case 128:
            case 136:
            case 135:
                r->lingering_close = 0;
        }
    }

    r->headers_out.content_type.len = 0;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (!r->error_page && clcf->error_pages && r->uri_changes != 0) {

        if (clcf->recursive_error_pages == 0) {
            r->error_page = 1;
        }

        err_page = clcf->error_pages->elts;

        for (i = 0; i < clcf->error_pages->nelts; i++) {
            if (err_page[i].status == error) {
                return ngx_http_send_error_page(r, &err_page[i]);
            }
        }
    }

    r->expect_tested = 1;

    if (ngx_http_discard_request_body(r) != NGX_OK) {
        r->keepalive = 0;
    }

    if (clcf->msie_refresh
        && r->headers_in.msie
        && (error == NGX_HTTP_MOVED_PERMANENTLY
            || error == NGX_HTTP_MOVED_TEMPORARILY))
    {
        return ngx_http_send_refresh(r);
    }

    if (error == NGX_HTTP_CREATED) {

        err = 0;

    } else if (error == NGX_HTTP_NO_CONTENT) {

        err = 0;

    } else if (error >= NGX_HTTP_MOVED_PERMANENTLY
               && error < NGX_HTTP_LAST_3XX)
    {

        err = error - NGX_HTTP_MOVED_PERMANENTLY + NGX_HTTP_OFF_3XX;

    } else if (error >= 134
               && error < NGX_HTTP_LAST_4XX)
    {

        err = error - 134 + NGX_HTTP_OFF_4XX;

    } else if (error >= NGX_HTTP_NGINX_CODES
               && error < NGX_HTTP_LAST_5XX)
    {

        err = error - NGX_HTTP_NGINX_CODES + NGX_HTTP_OFF_5XX;
        switch (error) {
            case 128:
            case 136:
            case 135:
            case 130:
                r->err_status = 134;
        }

    } else {

        err = 0;
    }

    return ngx_http_send_special_response(r, clcf, err);
}
