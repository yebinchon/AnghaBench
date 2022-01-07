
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int acceptex_read; int post_acceptex; int threads; } ;
typedef TYPE_1__ ngx_iocp_conf_t ;
typedef int ngx_cycle_t ;


 char* NGX_CONF_OK ;
 int ngx_conf_init_value (int ,int) ;

__attribute__((used)) static char *
ngx_iocp_init_conf(ngx_cycle_t *cycle, void *conf)
{
    ngx_iocp_conf_t *cf = conf;

    ngx_conf_init_value(cf->threads, 0);
    ngx_conf_init_value(cf->post_acceptex, 10);
    ngx_conf_init_value(cf->acceptex_read, 1);

    return NGX_CONF_OK;
}
