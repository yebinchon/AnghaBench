
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int test_align_power2 () ;
 int test_container_of () ;
 int test_div_round_up () ;
 int test_eqzero () ;
 int test_in_set () ;
 int test_log2i () ;
 int test_max () ;
 int test_physical_memory () ;
 int test_physical_memory_scale () ;
 int test_protect_errno () ;
 int test_raw_clone () ;
 int test_setup_logging (int ) ;
 int test_system_tasks_max () ;
 int test_system_tasks_max_scale () ;
 int test_u64log2 () ;
 int test_unprotect_errno () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_INFO);

        test_align_power2();
        test_max();
        test_container_of();
        test_div_round_up();
        test_u64log2();
        test_protect_errno();
        test_unprotect_errno();
        test_in_set();
        test_log2i();
        test_eqzero();
        test_raw_clone();
        test_physical_memory();
        test_physical_memory_scale();
        test_system_tasks_max();
        test_system_tasks_max_scale();

        return 0;
}
