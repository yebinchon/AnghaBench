
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_14__ {int value; } ;
typedef TYPE_4__ ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_12__ {int headers; } ;
struct TYPE_15__ {TYPE_1__* connection; TYPE_3__* upstream; TYPE_2__ headers_out; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_13__ {scalar_t__ (* rewrite_cookie ) (TYPE_5__*,TYPE_4__*) ;} ;
struct TYPE_11__ {int log; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_4__* ngx_list_push (int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_rewrite_set_cookie(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    ngx_int_t rc;
    ngx_table_elt_t *ho;

    ho = ngx_list_push(&r->headers_out.headers);
    if (ho == ((void*)0)) {
        return NGX_ERROR;
    }

    *ho = *h;

    if (r->upstream->rewrite_cookie) {
        rc = r->upstream->rewrite_cookie(r, ho);

        if (rc == NGX_DECLINED) {
            return NGX_OK;
        }
        return rc;
    }

    return NGX_OK;
}
