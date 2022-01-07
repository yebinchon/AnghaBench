
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ALLOC_SIZE (int) ;
 int log_info (char*,int ) ;
 int test_cpu_set_to_from_dbus () ;
 int test_cpus_in_affinity_mask () ;
 int test_parse_cpu_set () ;
 int test_parse_cpu_set_extend () ;

int main(int argc, char *argv[]) {
        log_info("CPU_ALLOC_SIZE(1) = %zu", CPU_ALLOC_SIZE(1));
        log_info("CPU_ALLOC_SIZE(9) = %zu", CPU_ALLOC_SIZE(9));
        log_info("CPU_ALLOC_SIZE(64) = %zu", CPU_ALLOC_SIZE(64));
        log_info("CPU_ALLOC_SIZE(65) = %zu", CPU_ALLOC_SIZE(65));
        log_info("CPU_ALLOC_SIZE(1024) = %zu", CPU_ALLOC_SIZE(1024));
        log_info("CPU_ALLOC_SIZE(1025) = %zu", CPU_ALLOC_SIZE(1025));
        log_info("CPU_ALLOC_SIZE(8191) = %zu", CPU_ALLOC_SIZE(8191));

        test_parse_cpu_set();
        test_parse_cpu_set_extend();
        test_cpus_in_affinity_mask();
        test_cpu_set_to_from_dbus();

        return 0;
}
