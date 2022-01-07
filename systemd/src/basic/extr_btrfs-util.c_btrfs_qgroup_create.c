
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int qgroup_create_or_destroy (int,int,int ) ;

int btrfs_qgroup_create(int fd, uint64_t qgroupid) {
        return qgroup_create_or_destroy(fd, 1, qgroupid);
}
