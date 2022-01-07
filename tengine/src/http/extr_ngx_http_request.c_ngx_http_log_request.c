
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_http_request_t ;
typedef int (* ngx_http_handler_pt ) (int *) ;
struct TYPE_7__ {TYPE_2__* phases; } ;
typedef TYPE_3__ ngx_http_core_main_conf_t ;
struct TYPE_5__ {size_t nelts; int (* elts ) (int *) ;} ;
struct TYPE_6__ {TYPE_1__ handlers; } ;


 size_t NGX_HTTP_LOG_PHASE ;
 int ngx_http_core_module ;
 TYPE_3__* ngx_http_get_module_main_conf (int *,int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void
ngx_http_log_request(ngx_http_request_t *r)
{
    ngx_uint_t i, n;
    ngx_http_handler_pt *log_handler;
    ngx_http_core_main_conf_t *cmcf;

    cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);

    log_handler = cmcf->phases[NGX_HTTP_LOG_PHASE].handlers.elts;
    n = cmcf->phases[NGX_HTTP_LOG_PHASE].handlers.nelts;

    for (i = 0; i < n; i++) {
        log_handler[i](r);
    }
}
