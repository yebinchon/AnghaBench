
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BtrfsRemoveFlags ;


 int subvol_remove_children (int,char const*,int ,int ) ;

int btrfs_subvol_remove_fd(int fd, const char *subvolume, BtrfsRemoveFlags flags) {
        return subvol_remove_children(fd, subvolume, 0, flags);
}
