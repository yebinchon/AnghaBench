
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int overflow_threshold; int overflow_test; int overflow_events; int signo; } ;
typedef TYPE_1__ ngx_rtsig_conf_t ;
typedef int ngx_cycle_t ;


 char* NGX_CONF_OK ;
 int SIGRTMIN ;
 int ngx_conf_init_uint_value (int ,int) ;

__attribute__((used)) static char *
ngx_rtsig_init_conf(ngx_cycle_t *cycle, void *conf)
{
    ngx_rtsig_conf_t *rtscf = conf;


    ngx_conf_init_uint_value(rtscf->signo, SIGRTMIN + 10);

    ngx_conf_init_uint_value(rtscf->overflow_events, 16);
    ngx_conf_init_uint_value(rtscf->overflow_test, 32);
    ngx_conf_init_uint_value(rtscf->overflow_threshold, 10);

    return NGX_CONF_OK;
}
