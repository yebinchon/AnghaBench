
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;


 scalar_t__ ACTION_RUN ;
 scalar_t__ NSEC_INFINITY ;
 int PR_SET_CHILD_SUBREAPER ;
 int PR_SET_NO_NEW_PRIVS ;
 int PR_SET_TIMERSLACK ;
 scalar_t__ arg_action ;
 int arg_capability_bounding_set ;
 int arg_machine_id ;
 scalar_t__ arg_no_new_privs ;
 int arg_runtime_watchdog ;
 scalar_t__ arg_syscall_archs ;
 scalar_t__ arg_system ;
 scalar_t__ arg_timer_slack_nsec ;
 scalar_t__ arg_watchdog_device ;
 int assert (char const**) ;
 int bump_file_max_and_nr_open () ;
 int bump_rlimit_memlock (struct rlimit*) ;
 int bump_rlimit_nofile (struct rlimit*) ;
 int bump_unix_max_dgram_qlen () ;
 int cap_test_all (int ) ;
 int capability_bounding_set_drop (int ,int) ;
 int capability_bounding_set_drop_usermode (int ) ;
 int enforce_syscall_archs (scalar_t__) ;
 int errno ;
 int hostname_setup () ;
 int install_crash_handler () ;
 int log_emergency_errno (int,char*) ;
 int log_warning_errno (int,char*,...) ;
 int loopback_setup () ;
 int machine_id_setup (int *,int ,int *) ;
 int mount_cgroup_controllers () ;
 scalar_t__ prctl (int ,int,...) ;
 int status_welcome () ;
 int test_usr () ;
 scalar_t__ timestamp_is_set (int ) ;
 int update_cpu_affinity (int) ;
 int update_numa_policy (int) ;
 int watchdog_set_device (scalar_t__) ;
 int watchdog_set_timeout (int *) ;
 int write_container_id () ;

__attribute__((used)) static int initialize_runtime(
                bool skip_setup,
                struct rlimit *saved_rlimit_nofile,
                struct rlimit *saved_rlimit_memlock,
                const char **ret_error_message) {
        int r;

        assert(ret_error_message);
        if (arg_action != ACTION_RUN)
                return 0;

        update_cpu_affinity(skip_setup);
        update_numa_policy(skip_setup);

        if (arg_system) {

                install_crash_handler();

                if (!skip_setup) {
                        r = mount_cgroup_controllers();
                        if (r < 0) {
                                *ret_error_message = "Failed to mount cgroup hierarchies";
                                return r;
                        }

                        status_welcome();
                        hostname_setup();
                        machine_id_setup(((void*)0), arg_machine_id, ((void*)0));
                        loopback_setup();
                        bump_unix_max_dgram_qlen();
                        bump_file_max_and_nr_open();
                        test_usr();
                        write_container_id();
                }

                if (arg_watchdog_device) {
                        r = watchdog_set_device(arg_watchdog_device);
                        if (r < 0)
                                log_warning_errno(r, "Failed to set watchdog device to %s, ignoring: %m", arg_watchdog_device);
                }

                if (timestamp_is_set(arg_runtime_watchdog))
                        watchdog_set_timeout(&arg_runtime_watchdog);
        }

        if (arg_timer_slack_nsec != NSEC_INFINITY)
                if (prctl(PR_SET_TIMERSLACK, arg_timer_slack_nsec) < 0)
                        log_warning_errno(errno, "Failed to adjust timer slack, ignoring: %m");

        if (arg_system && !cap_test_all(arg_capability_bounding_set)) {
                r = capability_bounding_set_drop_usermode(arg_capability_bounding_set);
                if (r < 0) {
                        *ret_error_message = "Failed to drop capability bounding set of usermode helpers";
                        return log_emergency_errno(r, "Failed to drop capability bounding set of usermode helpers: %m");
                }

                r = capability_bounding_set_drop(arg_capability_bounding_set, 1);
                if (r < 0) {
                        *ret_error_message = "Failed to drop capability bounding set";
                        return log_emergency_errno(r, "Failed to drop capability bounding set: %m");
                }
        }

        if (arg_system && arg_no_new_privs) {
                if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0) < 0) {
                        *ret_error_message = "Failed to disable new privileges";
                        return log_emergency_errno(errno, "Failed to disable new privileges: %m");
                }
        }

        if (arg_syscall_archs) {
                r = enforce_syscall_archs(arg_syscall_archs);
                if (r < 0) {
                        *ret_error_message = "Failed to set syscall architectures";
                        return r;
                }
        }

        if (!arg_system)

                if (prctl(PR_SET_CHILD_SUBREAPER, 1) < 0)
                        log_warning_errno(errno, "Failed to make us a subreaper: %m");


        (void) bump_rlimit_nofile(saved_rlimit_nofile);
        (void) bump_rlimit_memlock(saved_rlimit_memlock);

        return 0;
}
