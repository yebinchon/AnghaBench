
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_3__ {int a; } ;
typedef TYPE_1__ ngx_http_fake_merge_loc_conf_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 TYPE_1__* ngx_http_conf_get_module_loc_conf (int *,int ) ;
 scalar_t__ ngx_http_fake_merge_add_variable (int *) ;
 int ngx_http_fake_merge_module ;

__attribute__((used)) static ngx_int_t ngx_http_fake_merge_init(ngx_conf_t *cf)
{
    ngx_http_fake_merge_loc_conf_t *flcf;

    flcf = ngx_http_conf_get_module_loc_conf(cf,
                                              ngx_http_fake_merge_module);
    if (flcf == ((void*)0)) {
        return NGX_ERROR;
    }

    flcf->a = 1;

    if (ngx_http_fake_merge_add_variable(cf) != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
