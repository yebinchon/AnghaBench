
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int qgroup_assign_or_unassign (int,int,int ,int ) ;

int btrfs_qgroup_unassign(int fd, uint64_t child, uint64_t parent) {
        return qgroup_assign_or_unassign(fd, 0, child, parent);
}
