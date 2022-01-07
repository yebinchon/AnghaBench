
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int BTRFS_QGROUP_LEVEL_SHIFT ;

__attribute__((used)) static inline __u64 btrfs_qgroup_level(__u64 qgroupid)
{
 return qgroupid >> BTRFS_QGROUP_LEVEL_SHIFT;
}
