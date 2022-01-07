
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ startup_blockio_weight; scalar_t__ blockio_weight; } ;
typedef int ManagerState ;
typedef TYPE_1__ CGroupContext ;


 scalar_t__ CGROUP_BLKIO_WEIGHT_DEFAULT ;
 scalar_t__ CGROUP_BLKIO_WEIGHT_INVALID ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int MANAGER_INITIALIZING ;
 int MANAGER_STARTING ;

__attribute__((used)) static uint64_t cgroup_context_blkio_weight(CGroupContext *c, ManagerState state) {
        if (IN_SET(state, MANAGER_STARTING, MANAGER_INITIALIZING) &&
            c->startup_blockio_weight != CGROUP_BLKIO_WEIGHT_INVALID)
                return c->startup_blockio_weight;
        else if (c->blockio_weight != CGROUP_BLKIO_WEIGHT_INVALID)
                return c->blockio_weight;
        else
                return CGROUP_BLKIO_WEIGHT_DEFAULT;
}
