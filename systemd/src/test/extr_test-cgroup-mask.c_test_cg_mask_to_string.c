
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGROUP_MASK_BLKIO ;
 int CGROUP_MASK_CPU ;
 int CGROUP_MASK_CPUACCT ;
 int CGROUP_MASK_CPUSET ;
 int CGROUP_MASK_DEVICES ;
 int CGROUP_MASK_IO ;
 int CGROUP_MASK_MEMORY ;
 int CGROUP_MASK_PIDS ;
 int _CGROUP_MASK_ALL ;
 int test_cg_mask_to_string_one (int,char*) ;

__attribute__((used)) static void test_cg_mask_to_string(void) {
        test_cg_mask_to_string_one(0, ((void*)0));
        test_cg_mask_to_string_one(_CGROUP_MASK_ALL, "cpu cpuacct cpuset io blkio memory devices pids bpf-firewall bpf-devices");
        test_cg_mask_to_string_one(CGROUP_MASK_CPU, "cpu");
        test_cg_mask_to_string_one(CGROUP_MASK_CPUACCT, "cpuacct");
        test_cg_mask_to_string_one(CGROUP_MASK_CPUSET, "cpuset");
        test_cg_mask_to_string_one(CGROUP_MASK_IO, "io");
        test_cg_mask_to_string_one(CGROUP_MASK_BLKIO, "blkio");
        test_cg_mask_to_string_one(CGROUP_MASK_MEMORY, "memory");
        test_cg_mask_to_string_one(CGROUP_MASK_DEVICES, "devices");
        test_cg_mask_to_string_one(CGROUP_MASK_PIDS, "pids");
        test_cg_mask_to_string_one(CGROUP_MASK_CPU|CGROUP_MASK_CPUACCT, "cpu cpuacct");
        test_cg_mask_to_string_one(CGROUP_MASK_CPU|CGROUP_MASK_PIDS, "cpu pids");
        test_cg_mask_to_string_one(CGROUP_MASK_CPUACCT|CGROUP_MASK_PIDS, "cpuacct pids");
        test_cg_mask_to_string_one(CGROUP_MASK_DEVICES|CGROUP_MASK_PIDS, "devices pids");
        test_cg_mask_to_string_one(CGROUP_MASK_IO|CGROUP_MASK_BLKIO, "io blkio");
}
