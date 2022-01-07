
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_stream_handler_pt ;
struct TYPE_5__ {TYPE_1__* phases; } ;
typedef TYPE_2__ ngx_stream_core_main_conf_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;
struct TYPE_4__ {int handlers; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 size_t NGX_STREAM_ACCESS_PHASE ;
 int * ngx_array_push (int *) ;
 int ngx_stream_access_handler ;
 TYPE_2__* ngx_stream_conf_get_module_main_conf (int *,int ) ;
 int ngx_stream_core_module ;

__attribute__((used)) static ngx_int_t
ngx_stream_access_init(ngx_conf_t *cf)
{
    ngx_stream_handler_pt *h;
    ngx_stream_core_main_conf_t *cmcf;

    cmcf = ngx_stream_conf_get_module_main_conf(cf, ngx_stream_core_module);

    h = ngx_array_push(&cmcf->phases[NGX_STREAM_ACCESS_PHASE].handlers);
    if (h == ((void*)0)) {
        return NGX_ERROR;
    }

    *h = ngx_stream_access_handler;

    return NGX_OK;
}
