
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int cpus_in_affinity_mask () ;
 int log_info (char*,int) ;

__attribute__((used)) static void test_cpus_in_affinity_mask(void) {
        int r;

        r = cpus_in_affinity_mask();
        assert(r > 0);
        log_info("cpus_in_affinity_mask: %d", r);
}
