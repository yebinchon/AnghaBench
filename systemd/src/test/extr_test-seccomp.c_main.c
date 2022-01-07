
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_architecture_table () ;
 int test_filter_sets () ;
 int test_filter_sets_ordered () ;
 int test_load_syscall_filter_set_raw () ;
 int test_lock_personality () ;
 int test_memory_deny_write_execute_mmap () ;
 int test_memory_deny_write_execute_shmat () ;
 int test_protect_sysctl () ;
 int test_protect_syslog () ;
 int test_restrict_address_families () ;
 int test_restrict_archs () ;
 int test_restrict_namespace () ;
 int test_restrict_realtime () ;
 int test_restrict_suid_sgid () ;
 int test_seccomp_arch_to_string () ;
 int test_setup_logging (int ) ;
 int test_syscall_filter_set_find () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_seccomp_arch_to_string();
        test_architecture_table();
        test_syscall_filter_set_find();
        test_filter_sets();
        test_filter_sets_ordered();
        test_restrict_namespace();
        test_protect_sysctl();
        test_protect_syslog();
        test_restrict_address_families();
        test_restrict_realtime();
        test_memory_deny_write_execute_mmap();
        test_memory_deny_write_execute_shmat();
        test_restrict_archs();
        test_load_syscall_filter_set_raw();
        test_lock_personality();
        test_restrict_suid_sgid();

        return 0;
}
