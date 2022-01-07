
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_3__ {int get_handler; } ;
typedef TYPE_1__ ngx_http_variable_t ;
typedef int ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_1__* ngx_http_add_variable (int *,int *,int ) ;
 int ngx_http_slice_range_name ;
 int ngx_http_slice_range_variable ;

__attribute__((used)) static ngx_int_t
ngx_http_slice_add_variables(ngx_conf_t *cf)
{
    ngx_http_variable_t *var;

    var = ngx_http_add_variable(cf, &ngx_http_slice_range_name, 0);
    if (var == ((void*)0)) {
        return NGX_ERROR;
    }

    var->get_handler = ngx_http_slice_range_variable;

    return NGX_OK;
}
