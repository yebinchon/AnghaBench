
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_8__ {char* data; scalar_t__ len; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_cpuset_t ;
struct TYPE_9__ {int cpu_affinity_n; int cpu_affinity_auto; int * cpu_affinity; } ;
typedef TYPE_3__ ngx_core_conf_t ;
struct TYPE_10__ {TYPE_1__* args; int pool; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_7__ {int nelts; TYPE_2__* elts; } ;


 int CPU_SET (scalar_t__,int *) ;
 scalar_t__ CPU_SETSIZE ;
 int CPU_ZERO (int *) ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,...) ;
 scalar_t__ ngx_min (int ,scalar_t__) ;
 int ngx_ncpu ;
 int * ngx_palloc (int ,int) ;
 scalar_t__ ngx_strcmp (char*,char*) ;

__attribute__((used)) static char *
ngx_set_cpu_affinity(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                       "\"worker_cpu_affinity\" is not supported "
                       "on this platform, ignored");


    return NGX_CONF_OK;
}
