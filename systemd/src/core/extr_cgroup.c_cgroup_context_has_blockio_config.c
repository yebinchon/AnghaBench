
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ blockio_weight; scalar_t__ startup_blockio_weight; scalar_t__ blockio_device_bandwidths; scalar_t__ blockio_device_weights; scalar_t__ blockio_accounting; } ;
typedef TYPE_1__ CGroupContext ;


 scalar_t__ CGROUP_BLKIO_WEIGHT_INVALID ;

__attribute__((used)) static bool cgroup_context_has_blockio_config(CGroupContext *c) {
        return c->blockio_accounting ||
                c->blockio_weight != CGROUP_BLKIO_WEIGHT_INVALID ||
                c->startup_blockio_weight != CGROUP_BLKIO_WEIGHT_INVALID ||
                c->blockio_device_weights ||
                c->blockio_device_bandwidths;
}
