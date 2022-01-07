
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_10__ {TYPE_2__ value; } ;
typedef TYPE_3__ ngx_table_elt_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int not_found; int valid; int len; int * data; scalar_t__ no_cacheable; } ;
typedef TYPE_4__ ngx_http_variable_value_t ;
struct TYPE_8__ {TYPE_3__* te; } ;
struct TYPE_12__ {TYPE_1__ headers_in; } ;
typedef TYPE_5__ ngx_http_request_t ;


 int NGX_OK ;
 int * ngx_strlcasestrn (scalar_t__,scalar_t__,int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_grpc_internal_trailers_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_table_elt_t *te;

    te = r->headers_in.te;

    if (te == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    if (ngx_strlcasestrn(te->value.data, te->value.data + te->value.len,
                         (u_char *) "trailers", 8 - 1)
        == ((void*)0))
    {
        v->not_found = 1;
        return NGX_OK;
    }

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    v->data = (u_char *) "trailers";
    v->len = sizeof("trailers") - 1;

    return NGX_OK;
}
