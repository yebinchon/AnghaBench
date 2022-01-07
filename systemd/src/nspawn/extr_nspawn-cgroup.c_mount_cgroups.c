
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef scalar_t__ CGroupUnified ;


 scalar_t__ CGROUP_UNIFIED_ALL ;
 int mount_legacy_cgns_supported (char const*,scalar_t__,int,int ,int ,char const*) ;
 int mount_legacy_cgns_unsupported (char const*,scalar_t__,int,int ,int ,char const*) ;
 int mount_unified_cgroups (char const*) ;

int mount_cgroups(
                const char *dest,
                CGroupUnified unified_requested,
                bool userns,
                uid_t uid_shift,
                uid_t uid_range,
                const char *selinux_apifs_context,
                bool use_cgns) {

        if (unified_requested >= CGROUP_UNIFIED_ALL)
                return mount_unified_cgroups(dest);
        if (use_cgns)
                return mount_legacy_cgns_supported(dest, unified_requested, userns, uid_shift, uid_range, selinux_apifs_context);

        return mount_legacy_cgns_unsupported(dest, unified_requested, userns, uid_shift, uid_range, selinux_apifs_context);
}
