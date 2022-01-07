
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cycle; } ;
typedef TYPE_2__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_8__ {int log; } ;
typedef TYPE_3__ ngx_backtrace_conf_t ;
struct TYPE_6__ {int conf_ctx; } ;


 int ngx_backtrace_module ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 char* ngx_log_set_log (TYPE_2__*,int *) ;

__attribute__((used)) static char *
ngx_backtrace_files(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    ngx_backtrace_conf_t *bcf;

    bcf = (ngx_backtrace_conf_t *) ngx_get_conf(cf->cycle->conf_ctx,
                                                ngx_backtrace_module);

    return ngx_log_set_log(cf, &bcf->log);
}
