#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int CGROUP_MASK_BLKIO ; 
 int CGROUP_MASK_CPU ; 
 int CGROUP_MASK_CPUACCT ; 
 int CGROUP_MASK_CPUSET ; 
 int CGROUP_MASK_DEVICES ; 
 int CGROUP_MASK_IO ; 
 int CGROUP_MASK_MEMORY ; 
 int CGROUP_MASK_PIDS ; 
 int _CGROUP_MASK_ALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0(0, NULL);
        FUNC0(_CGROUP_MASK_ALL, "cpu cpuacct cpuset io blkio memory devices pids bpf-firewall bpf-devices");
        FUNC0(CGROUP_MASK_CPU, "cpu");
        FUNC0(CGROUP_MASK_CPUACCT, "cpuacct");
        FUNC0(CGROUP_MASK_CPUSET, "cpuset");
        FUNC0(CGROUP_MASK_IO, "io");
        FUNC0(CGROUP_MASK_BLKIO, "blkio");
        FUNC0(CGROUP_MASK_MEMORY, "memory");
        FUNC0(CGROUP_MASK_DEVICES, "devices");
        FUNC0(CGROUP_MASK_PIDS, "pids");
        FUNC0(CGROUP_MASK_CPU|CGROUP_MASK_CPUACCT, "cpu cpuacct");
        FUNC0(CGROUP_MASK_CPU|CGROUP_MASK_PIDS, "cpu pids");
        FUNC0(CGROUP_MASK_CPUACCT|CGROUP_MASK_PIDS, "cpuacct pids");
        FUNC0(CGROUP_MASK_DEVICES|CGROUP_MASK_PIDS, "devices pids");
        FUNC0(CGROUP_MASK_IO|CGROUP_MASK_BLKIO, "io blkio");
}