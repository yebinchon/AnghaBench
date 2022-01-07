
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
typedef struct TYPE_17__ TYPE_16__ ;


typedef scalar_t__ time_t ;
typedef size_t ngx_uint_t ;
typedef int ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {scalar_t__ status_n; int * www_authenticate; } ;
struct TYPE_23__ {TYPE_5__* pipe; TYPE_4__* conf; scalar_t__ cacheable; TYPE_2__ headers_in; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
struct TYPE_20__ {int * www_authenticate; int headers; } ;
struct TYPE_24__ {TYPE_16__* cache; TYPE_3__ headers_out; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_25__ {scalar_t__ status; } ;
typedef TYPE_8__ ngx_http_err_page_t ;
struct TYPE_26__ {TYPE_1__* error_pages; } ;
typedef TYPE_9__ ngx_http_core_loc_conf_t ;
struct TYPE_22__ {int temp_file; } ;
struct TYPE_21__ {int cache_valid; int intercept_errors; scalar_t__ intercept_404; } ;
struct TYPE_18__ {size_t nelts; TYPE_8__* elts; } ;
struct TYPE_17__ {scalar_t__ valid_sec; scalar_t__ error; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_NOT_FOUND ;
 scalar_t__ NGX_HTTP_UNAUTHORIZED ;
 scalar_t__ NGX_OK ;
 int ngx_http_core_module ;
 int ngx_http_file_cache_free (TYPE_16__*,int ) ;
 scalar_t__ ngx_http_file_cache_valid (int ,scalar_t__) ;
 TYPE_9__* ngx_http_get_module_loc_conf (TYPE_7__*,int ) ;
 int ngx_http_upstream_finalize_request (TYPE_7__*,TYPE_6__*,scalar_t__) ;
 int * ngx_list_push (int *) ;
 scalar_t__ ngx_time () ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_intercept_errors(ngx_http_request_t *r,
    ngx_http_upstream_t *u)
{
    ngx_int_t status;
    ngx_uint_t i;
    ngx_table_elt_t *h;
    ngx_http_err_page_t *err_page;
    ngx_http_core_loc_conf_t *clcf;

    status = u->headers_in.status_n;

    if (status == NGX_HTTP_NOT_FOUND && u->conf->intercept_404) {
        ngx_http_upstream_finalize_request(r, u, NGX_HTTP_NOT_FOUND);
        return NGX_OK;
    }

    if (!u->conf->intercept_errors) {
        return NGX_DECLINED;
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (clcf->error_pages == ((void*)0)) {
        return NGX_DECLINED;
    }

    err_page = clcf->error_pages->elts;
    for (i = 0; i < clcf->error_pages->nelts; i++) {

        if (err_page[i].status == status) {

            if (status == NGX_HTTP_UNAUTHORIZED
                && u->headers_in.www_authenticate)
            {
                h = ngx_list_push(&r->headers_out.headers);

                if (h == ((void*)0)) {
                    ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
                    return NGX_OK;
                }

                *h = *u->headers_in.www_authenticate;

                r->headers_out.www_authenticate = h;
            }
            ngx_http_upstream_finalize_request(r, u, status);

            return NGX_OK;
        }
    }

    return NGX_DECLINED;
}
