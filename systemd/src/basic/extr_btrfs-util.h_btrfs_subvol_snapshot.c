
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BtrfsSnapshotFlags ;


 int btrfs_subvol_snapshot_full (char const*,char const*,int ,int *,int *,int *) ;

__attribute__((used)) static inline int btrfs_subvol_snapshot(const char *old_path, const char *new_path, BtrfsSnapshotFlags flags) {
        return btrfs_subvol_snapshot_full(old_path, new_path, flags, ((void*)0), ((void*)0), ((void*)0));
}
