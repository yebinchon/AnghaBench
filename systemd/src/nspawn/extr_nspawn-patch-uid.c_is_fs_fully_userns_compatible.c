
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_type; } ;


 int BINFMTFS_MAGIC ;
 int BPF_FS_MAGIC ;
 int CGROUP2_SUPER_MAGIC ;
 int CGROUP_SUPER_MAGIC ;
 int DEBUGFS_MAGIC ;
 int DEVPTS_SUPER_MAGIC ;
 int EFIVARFS_MAGIC ;
 scalar_t__ F_TYPE_EQUAL (int ,int ) ;
 int HUGETLBFS_MAGIC ;
 int MQUEUE_MAGIC ;
 int PROC_SUPER_MAGIC ;
 int PSTOREFS_MAGIC ;
 int SECURITYFS_MAGIC ;
 int SELINUX_MAGIC ;
 int SMACK_MAGIC ;
 int SYSFS_MAGIC ;
 int TRACEFS_MAGIC ;
 int assert (struct statfs const*) ;

__attribute__((used)) static int is_fs_fully_userns_compatible(const struct statfs *sfs) {

        assert(sfs);

        return F_TYPE_EQUAL(sfs->f_type, BINFMTFS_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, CGROUP_SUPER_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, CGROUP2_SUPER_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, DEBUGFS_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, DEVPTS_SUPER_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, EFIVARFS_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, HUGETLBFS_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, MQUEUE_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, PROC_SUPER_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, PSTOREFS_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, SELINUX_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, SMACK_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, SECURITYFS_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, BPF_FS_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, TRACEFS_MAGIC) ||
               F_TYPE_EQUAL(sfs->f_type, SYSFS_MAGIC);
}
