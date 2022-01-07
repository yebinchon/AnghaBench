
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_http_script_code_pt ;
struct TYPE_4__ {int codes; } ;
typedef TYPE_1__ ngx_http_rewrite_loc_conf_t ;
struct TYPE_5__ {int pool; } ;
typedef TYPE_2__ ngx_conf_t ;
typedef int ngx_command_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int ngx_http_script_break_code ;
 int * ngx_http_script_start_code (int ,int *,int) ;

__attribute__((used)) static char *
ngx_http_rewrite_break(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_rewrite_loc_conf_t *lcf = conf;

    ngx_http_script_code_pt *code;

    code = ngx_http_script_start_code(cf->pool, &lcf->codes, sizeof(uintptr_t));
    if (code == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *code = ngx_http_script_break_code;

    return NGX_CONF_OK;
}
