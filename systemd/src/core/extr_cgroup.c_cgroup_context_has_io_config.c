
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_weight; scalar_t__ startup_io_weight; scalar_t__ io_device_limits; scalar_t__ io_device_latencies; scalar_t__ io_device_weights; scalar_t__ io_accounting; } ;
typedef TYPE_1__ CGroupContext ;


 scalar_t__ CGROUP_WEIGHT_INVALID ;

__attribute__((used)) static bool cgroup_context_has_io_config(CGroupContext *c) {
        return c->io_accounting ||
                c->io_weight != CGROUP_WEIGHT_INVALID ||
                c->startup_io_weight != CGROUP_WEIGHT_INVALID ||
                c->io_device_weights ||
                c->io_device_latencies ||
                c->io_device_limits;
}
