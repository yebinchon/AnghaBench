
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ vlc_thread_t ;
struct sched_param {scalar_t__ sched_priority; } ;


 int SCHED_OTHER ;
 int SCHED_RR ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ pthread_setschedparam (int ,int,struct sched_param*) ;
 int rt_offset ;
 scalar_t__ rt_priorities ;
 scalar_t__ sched_get_priority_max (int) ;
 scalar_t__ sched_get_priority_min (int) ;

int vlc_set_priority (vlc_thread_t th, int priority)
{
    (void) th; (void) priority;

    return VLC_SUCCESS;
}
