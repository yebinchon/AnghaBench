
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; scalar_t__ len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {int valid; int data; scalar_t__ not_found; scalar_t__ no_cacheable; scalar_t__ len; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
typedef int ngx_http_request_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_http_map_uri_to_path (int *,TYPE_1__*,size_t*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_request_filename(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    size_t root;
    ngx_str_t path;

    if (ngx_http_map_uri_to_path(r, &path, &root, 0) == ((void*)0)) {
        return NGX_ERROR;
    }



    v->len = path.len - 1;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = path.data;

    return NGX_OK;
}
