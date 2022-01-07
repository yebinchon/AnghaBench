
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ set; int allocated; } ;
struct TYPE_7__ {TYPE_1__ nodes; } ;
typedef TYPE_2__ NUMAPolicy ;


 int CPU_COUNT_S (int ,scalar_t__) ;
 int IN_SET (scalar_t__,int ,int ,scalar_t__) ;
 int MPOL_DEFAULT ;
 int MPOL_LOCAL ;
 scalar_t__ MPOL_PREFERRED ;
 int assert (TYPE_2__ const*) ;
 int mpol_is_valid (scalar_t__) ;
 scalar_t__ numa_policy_get_type (TYPE_2__ const*) ;

bool numa_policy_is_valid(const NUMAPolicy *policy) {
        assert(policy);

        if (!mpol_is_valid(numa_policy_get_type(policy)))
                return 0;

        if (!policy->nodes.set &&
            !IN_SET(numa_policy_get_type(policy), MPOL_DEFAULT, MPOL_LOCAL, MPOL_PREFERRED))
                return 0;

        if (policy->nodes.set &&
            numa_policy_get_type(policy) == MPOL_PREFERRED &&
            CPU_COUNT_S(policy->nodes.allocated, policy->nodes.set) != 1)
                return 0;

        return 1;
}
