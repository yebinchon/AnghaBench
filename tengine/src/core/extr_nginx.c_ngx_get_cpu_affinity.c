
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_cpuset_t ;
struct TYPE_3__ {int cpu_affinity_n; int * cpu_affinity; scalar_t__ cpu_affinity_auto; } ;
typedef TYPE_1__ ngx_core_conf_t ;
struct TYPE_4__ {int conf_ctx; } ;


 scalar_t__ CPU_ISSET (size_t,int *) ;
 int CPU_SET (size_t,int *) ;
 size_t CPU_SETSIZE ;
 int CPU_ZERO (int *) ;
 int ngx_core_module ;
 TYPE_2__* ngx_cycle ;
 scalar_t__ ngx_get_conf (int ,int ) ;

ngx_cpuset_t *
ngx_get_cpu_affinity(ngx_uint_t n)
{
    return ((void*)0);


}
