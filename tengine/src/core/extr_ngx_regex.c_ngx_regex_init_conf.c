
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcre_jit; } ;
typedef TYPE_1__ ngx_regex_conf_t ;
typedef int ngx_cycle_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_init_value (int ,int ) ;

__attribute__((used)) static char *
ngx_regex_init_conf(ngx_cycle_t *cycle, void *conf)
{
    ngx_regex_conf_t *rcf = conf;

    ngx_conf_init_value(rcf->pcre_jit, 0);

    return NGX_CONF_OK;
}
