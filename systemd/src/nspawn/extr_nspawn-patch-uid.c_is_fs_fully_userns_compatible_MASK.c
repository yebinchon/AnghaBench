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
struct statfs {int /*<<< orphan*/  f_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINFMTFS_MAGIC ; 
 int /*<<< orphan*/  BPF_FS_MAGIC ; 
 int /*<<< orphan*/  CGROUP2_SUPER_MAGIC ; 
 int /*<<< orphan*/  CGROUP_SUPER_MAGIC ; 
 int /*<<< orphan*/  DEBUGFS_MAGIC ; 
 int /*<<< orphan*/  DEVPTS_SUPER_MAGIC ; 
 int /*<<< orphan*/  EFIVARFS_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HUGETLBFS_MAGIC ; 
 int /*<<< orphan*/  MQUEUE_MAGIC ; 
 int /*<<< orphan*/  PROC_SUPER_MAGIC ; 
 int /*<<< orphan*/  PSTOREFS_MAGIC ; 
 int /*<<< orphan*/  SECURITYFS_MAGIC ; 
 int /*<<< orphan*/  SELINUX_MAGIC ; 
 int /*<<< orphan*/  SMACK_MAGIC ; 
 int /*<<< orphan*/  SYSFS_MAGIC ; 
 int /*<<< orphan*/  TRACEFS_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct statfs const*) ; 

__attribute__((used)) static int FUNC2(const struct statfs *sfs) {

        FUNC1(sfs);

        return FUNC0(sfs->f_type, BINFMTFS_MAGIC) ||
               FUNC0(sfs->f_type, CGROUP_SUPER_MAGIC) ||
               FUNC0(sfs->f_type, CGROUP2_SUPER_MAGIC) ||
               FUNC0(sfs->f_type, DEBUGFS_MAGIC) ||
               FUNC0(sfs->f_type, DEVPTS_SUPER_MAGIC) ||
               FUNC0(sfs->f_type, EFIVARFS_MAGIC) ||
               FUNC0(sfs->f_type, HUGETLBFS_MAGIC) ||
               FUNC0(sfs->f_type, MQUEUE_MAGIC) ||
               FUNC0(sfs->f_type, PROC_SUPER_MAGIC) ||
               FUNC0(sfs->f_type, PSTOREFS_MAGIC) ||
               FUNC0(sfs->f_type, SELINUX_MAGIC) ||
               FUNC0(sfs->f_type, SMACK_MAGIC) ||
               FUNC0(sfs->f_type, SECURITYFS_MAGIC) ||
               FUNC0(sfs->f_type, BPF_FS_MAGIC) ||
               FUNC0(sfs->f_type, TRACEFS_MAGIC) ||
               FUNC0(sfs->f_type, SYSFS_MAGIC);
}