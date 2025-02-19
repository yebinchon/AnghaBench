
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CGROUP_UNIFIED_ALL ;
 scalar_t__ CGROUP_UNIFIED_NONE ;
 scalar_t__ CGROUP_UNIFIED_SYSTEMD ;
 scalar_t__ CGROUP_UNIFIED_UNKNOWN ;
 int CLONE_NEWPID ;
 int CLONE_NEWUTS ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IN_SET (int ,int ,int ) ;
 int LINK_AUTO ;
 int LINK_NO ;
 int MOUNT_APPLY_APIVFS_NETNS ;
 int MOUNT_APPLY_APIVFS_RO ;
 int MOUNT_USE_USERNS ;
 scalar_t__ SIGRTMIN ;
 scalar_t__ START_BOOT ;
 scalar_t__ START_PID1 ;
 scalar_t__ START_PID2 ;
 int SYNTHETIC_ERRNO (int ) ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 scalar_t__ USER_NAMESPACE_NO ;
 scalar_t__ USER_NAMESPACE_PICK ;
 scalar_t__ VOLATILE_NO ;
 int arg_clone_ns_flags ;
 scalar_t__ arg_directory ;
 scalar_t__ arg_ephemeral ;
 scalar_t__ arg_expose_ports ;
 scalar_t__ arg_image ;
 scalar_t__ arg_keep_unit ;
 scalar_t__ arg_kill_signal ;
 int arg_link_journal ;
 scalar_t__ arg_machine ;
 int arg_mount_settings ;
 scalar_t__ arg_network_bridge ;
 scalar_t__ arg_network_interfaces ;
 scalar_t__ arg_network_ipvlan ;
 scalar_t__ arg_network_macvlan ;
 scalar_t__ arg_network_namespace_path ;
 scalar_t__ arg_network_veth ;
 scalar_t__ arg_network_veth_extra ;
 scalar_t__ arg_network_zone ;
 scalar_t__ arg_private_network ;
 int arg_read_only ;
 int arg_register ;
 scalar_t__ arg_start_mode ;
 scalar_t__ arg_template ;
 scalar_t__ arg_unified_cgroup_hierarchy ;
 int arg_userns_chown ;
 scalar_t__ arg_userns_mode ;
 scalar_t__ arg_volatile_mode ;
 int cg_all_unified () ;
 scalar_t__ cg_pid_get_owner_uid (int ,int *) ;
 scalar_t__ cg_unified_controller (int ) ;
 int custom_mount_check_all () ;
 int log_error_errno (int,char*) ;
 int userns_supported () ;

__attribute__((used)) static int verify_arguments(void) {
        int r;

        if (arg_start_mode == START_PID2 && arg_unified_cgroup_hierarchy == CGROUP_UNIFIED_UNKNOWN) {







                r = cg_all_unified();
                if (r < 0)
                        return log_error_errno(r, "Failed to determine whether we are in all unified mode.");
                if (r > 0)
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_ALL;
                else if (cg_unified_controller(SYSTEMD_CGROUP_CONTROLLER) > 0)
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_SYSTEMD;
                else
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_NONE;
        }

        if (arg_userns_mode != USER_NAMESPACE_NO)
                arg_mount_settings |= MOUNT_USE_USERNS;

        if (arg_private_network)
                arg_mount_settings |= MOUNT_APPLY_APIVFS_NETNS;

        if (!(arg_clone_ns_flags & CLONE_NEWPID) ||
            !(arg_clone_ns_flags & CLONE_NEWUTS)) {
                arg_register = 0;
                if (arg_start_mode != START_PID1)
                        return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--boot cannot be used without namespacing.");
        }

        if (arg_userns_mode == USER_NAMESPACE_PICK)
                arg_userns_chown = 1;

        if (arg_start_mode == START_BOOT && arg_kill_signal <= 0)
                arg_kill_signal = SIGRTMIN+3;

        if (arg_volatile_mode != VOLATILE_NO)
                arg_read_only = 1;

        if (arg_keep_unit && arg_register && cg_pid_get_owner_uid(0, ((void*)0)) >= 0)


                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--keep-unit --register=yes may not be used when invoked from a user session.");

        if (arg_directory && arg_image)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--directory= and --image= may not be combined.");

        if (arg_template && arg_image)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--template= and --image= may not be combined.");

        if (arg_template && !(arg_directory || arg_machine))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--template= needs --directory= or --machine=.");

        if (arg_ephemeral && arg_template)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--ephemeral and --template= may not be combined.");

        if (arg_ephemeral && !IN_SET(arg_link_journal, LINK_NO, LINK_AUTO))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--ephemeral and --link-journal= may not be combined.");

        if (arg_userns_mode != USER_NAMESPACE_NO && !userns_supported())
                return log_error_errno(SYNTHETIC_ERRNO(EOPNOTSUPP), "--private-users= is not supported, kernel compiled without user namespace support.");

        if (arg_userns_chown && arg_read_only)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "--read-only and --private-users-chown may not be combined.");




        if (arg_userns_chown && arg_volatile_mode != VOLATILE_NO)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--volatile= and --private-users-chown may not be combined.");



        if (arg_network_namespace_path &&
                (arg_network_interfaces || arg_network_macvlan ||
                 arg_network_ipvlan || arg_network_veth_extra ||
                 arg_network_bridge || arg_network_zone ||
                 arg_network_veth || arg_private_network))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "--network-namespace-path= cannot be combined with other network options.");

        if (arg_network_bridge && arg_network_zone)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "--network-bridge= and --network-zone= may not be combined.");

        if (arg_userns_mode != USER_NAMESPACE_NO && (arg_mount_settings & MOUNT_APPLY_APIVFS_NETNS) && !arg_private_network)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "Invalid namespacing settings. Mounting sysfs with --private-users requires --private-network.");

        if (arg_userns_mode != USER_NAMESPACE_NO && !(arg_mount_settings & MOUNT_APPLY_APIVFS_RO))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "Cannot combine --private-users with read-write mounts.");

        if (arg_expose_ports && !arg_private_network)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "Cannot use --port= without private networking.");


        if (arg_expose_ports)
                return log_error_errno(SYNTHETIC_ERRNO(EOPNOTSUPP), "--port= is not supported, compiled without libiptc support.");


        r = custom_mount_check_all();
        if (r < 0)
                return r;

        return 0;
}
