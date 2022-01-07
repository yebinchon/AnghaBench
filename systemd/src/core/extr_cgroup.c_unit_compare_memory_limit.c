
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_13__ {scalar_t__ memory_high; scalar_t__ memory_max; scalar_t__ memory_swap_max; } ;
typedef TYPE_1__ Unit ;
typedef int CGroupMask ;
typedef TYPE_1__ CGroupContext ;


 scalar_t__ CGROUP_LIMIT_MAX ;
 int CGROUP_MASK_MEMORY ;
 int EINVAL ;
 int ENODATA ;
 int FLAGS_SET (int ,int ) ;
 scalar_t__ PAGE_ALIGN_DOWN (scalar_t__) ;
 int SPECIAL_ROOT_SLICE ;
 int assert (TYPE_1__*) ;
 int cg_all_unified () ;
 int log_debug_errno (int,char*) ;
 int log_unit_debug_errno (TYPE_1__*,int,char*,char const*) ;
 scalar_t__ streq (char const*,char*) ;
 scalar_t__ unit_get_ancestor_memory_low (TYPE_1__*) ;
 scalar_t__ unit_get_ancestor_memory_min (TYPE_1__*) ;
 TYPE_1__* unit_get_cgroup_context (TYPE_1__*) ;
 int unit_get_kernel_memory_limit (TYPE_1__*,char const*,scalar_t__*) ;
 int unit_get_target_mask (TYPE_1__*) ;
 scalar_t__ unit_has_name (TYPE_1__*,int ) ;

__attribute__((used)) static int unit_compare_memory_limit(Unit *u, const char *property_name, uint64_t *ret_unit_value, uint64_t *ret_kernel_value) {
        CGroupContext *c;
        CGroupMask m;
        const char *file;
        uint64_t unit_value;
        int r;
        assert(u);

        r = cg_all_unified();
        if (r < 0)
                return log_debug_errno(r, "Failed to determine cgroup hierarchy version: %m");





        if (r == 0)
                return -ENODATA;


        if (unit_has_name(u, SPECIAL_ROOT_SLICE))
                return -ENODATA;





        m = unit_get_target_mask(u);
        if (!FLAGS_SET(m, CGROUP_MASK_MEMORY))
                return -ENODATA;

        c = unit_get_cgroup_context(u);
        assert(c);

        if (streq(property_name, "MemoryLow")) {
                unit_value = unit_get_ancestor_memory_low(u);
                file = "memory.low";
        } else if (streq(property_name, "MemoryMin")) {
                unit_value = unit_get_ancestor_memory_min(u);
                file = "memory.min";
        } else if (streq(property_name, "MemoryHigh")) {
                unit_value = c->memory_high;
                file = "memory.high";
        } else if (streq(property_name, "MemoryMax")) {
                unit_value = c->memory_max;
                file = "memory.max";
        } else if (streq(property_name, "MemorySwapMax")) {
                unit_value = c->memory_swap_max;
                file = "memory.swap.max";
        } else
                return -EINVAL;

        r = unit_get_kernel_memory_limit(u, file, ret_kernel_value);
        if (r < 0)
                return log_unit_debug_errno(u, r, "Failed to parse %s: %m", file);





        if (*ret_kernel_value == unit_value) {
                *ret_unit_value = unit_value;
                return 1;
        }





        if (unit_value != CGROUP_LIMIT_MAX)
                unit_value = PAGE_ALIGN_DOWN(unit_value);

        *ret_unit_value = unit_value;

        return *ret_kernel_value == *ret_unit_value;
}
