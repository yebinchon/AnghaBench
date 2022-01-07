
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int v ;
typedef scalar_t__ usec_t ;
struct TYPE_4__ {int warned_clamping_cpu_quota_period; } ;
typedef TYPE_1__ Unit ;


 scalar_t__ CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC ;
 int FORMAT_TIMESPAN_MAX ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 scalar_t__ USEC_INFINITY ;
 int USEC_PER_MSEC ;
 int USEC_PER_SEC ;
 scalar_t__ cgroup_cpu_adjust_period (scalar_t__,scalar_t__,int ,int ) ;
 int format_timespan (char*,int,scalar_t__,int) ;
 int log_unit_full (TYPE_1__*,int ,int ,char*,int ) ;

__attribute__((used)) static usec_t cgroup_cpu_adjust_period_and_log(Unit *u, usec_t period, usec_t quota) {
        usec_t new_period;

        if (quota == USEC_INFINITY)

                return CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC;

        if (period == USEC_INFINITY)

                period = CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC;


        new_period = cgroup_cpu_adjust_period(period, quota, USEC_PER_MSEC, USEC_PER_SEC);

        if (new_period != period) {
                char v[FORMAT_TIMESPAN_MAX];
                log_unit_full(u, u->warned_clamping_cpu_quota_period ? LOG_DEBUG : LOG_WARNING, 0,
                              "Clamping CPU interval for cpu.max: period is now %s",
                              format_timespan(v, sizeof(v), new_period, 1));
                u->warned_clamping_cpu_quota_period = 1;
        }

        return new_period;
}
