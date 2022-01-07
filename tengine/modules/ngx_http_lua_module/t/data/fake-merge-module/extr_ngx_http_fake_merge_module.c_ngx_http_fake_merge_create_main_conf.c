
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void ngx_http_fake_merge_main_conf_t ;
struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ ngx_conf_t ;


 int NGX_LOG_ALERT ;
 int ngx_conf_log_error (int ,TYPE_1__*,int ,char*) ;
 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static void *ngx_http_fake_merge_create_main_conf(ngx_conf_t *cf)
{
    ngx_http_fake_merge_main_conf_t *fmcf;

    fmcf = ngx_pcalloc(cf->pool, sizeof(ngx_http_fake_merge_main_conf_t));
    if (fmcf == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_ALERT, cf, 0, "create module main conf");
        return ((void*)0);
    }

    return fmcf;
}
