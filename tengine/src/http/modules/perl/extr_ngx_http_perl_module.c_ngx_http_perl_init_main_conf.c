
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * perl; } ;
typedef TYPE_1__ ngx_http_perl_main_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 scalar_t__ NGX_CONF_OK ;
 scalar_t__ ngx_http_perl_init_interpreter (int *,TYPE_1__*) ;

__attribute__((used)) static char *
ngx_http_perl_init_main_conf(ngx_conf_t *cf, void *conf)
{
    ngx_http_perl_main_conf_t *pmcf = conf;

    if (pmcf->perl == ((void*)0)) {
        if (ngx_http_perl_init_interpreter(cf, pmcf) != NGX_CONF_OK) {
            return NGX_CONF_ERROR;
        }
    }

    return NGX_CONF_OK;
}
