
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ ssize_t ;


 int EIO ;
 int btrfs_clone_range (int,scalar_t__,int,scalar_t__,scalar_t__) ;
 int errno ;
 scalar_t__ pread (int,void*,scalar_t__,scalar_t__) ;
 scalar_t__ pwrite (int,void*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int copy_cluster(
                int sfd, uint64_t soffset,
                int dfd, uint64_t doffset,
                uint64_t cluster_size,
                void *buffer) {

        ssize_t l;
        int r;

        r = btrfs_clone_range(sfd, soffset, dfd, doffset, cluster_size);
        if (r >= 0)
                return r;

        l = pread(sfd, buffer, cluster_size, soffset);
        if (l < 0)
                return -errno;
        if ((uint64_t) l != cluster_size)
                return -EIO;

        l = pwrite(dfd, buffer, cluster_size, doffset);
        if (l < 0)
                return -errno;
        if ((uint64_t) l != cluster_size)
                return -EIO;

        return 0;
}
