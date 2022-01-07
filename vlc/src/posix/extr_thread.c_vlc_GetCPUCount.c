
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
typedef int processorid_t ;
struct TYPE_3__ {scalar_t__ pi_state; } ;
typedef TYPE_1__ processor_info_t ;
typedef int cpu_set_t ;
typedef int cpu ;


 int CPU_COUNT (int *) ;
 int CPU_ZERO (int *) ;
 int PS_MYID ;
 scalar_t__ P_ONLINE ;
 int _SC_NPROCESSORS_CONF ;
 int _SC_NPROCESSORS_MAX ;
 int _SC_NPROCESSORS_ONLN ;
 int free (int *) ;
 scalar_t__ processor_info (int ,TYPE_1__*) ;
 scalar_t__ pset_info (int ,int*,size_t*,int *) ;
 scalar_t__ sched_getaffinity (int ,int,int *) ;
 int sysconf (int ) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_alloc (int,int) ;

unsigned vlc_GetCPUCount(void)
{
    return 1;

}
