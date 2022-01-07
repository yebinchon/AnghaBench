
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTRFS_SNAPSHOT_FALLBACK_COPY ;
 int BTRFS_SNAPSHOT_FALLBACK_DIRECTORY ;
 int BTRFS_SNAPSHOT_QUOTA ;
 int BTRFS_SNAPSHOT_RECURSIVE ;
 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int REMOVE_SUBVOLUME ;
 int assert (char const*) ;
 int btrfs_subvol_snapshot (char const*,char const*,int) ;
 int log_error_errno (int,char*) ;
 int log_info (char*,char const*) ;
 char* prefix_roota (char const*,char const*) ;
 int rm_rf (char const*,int) ;

int pull_make_local_copy(const char *final, const char *image_root, const char *local, bool force_local) {
        const char *p;
        int r;

        assert(final);
        assert(local);

        if (!image_root)
                image_root = "/var/lib/machines";

        p = prefix_roota(image_root, local);

        if (force_local)
                (void) rm_rf(p, REMOVE_ROOT|REMOVE_PHYSICAL|REMOVE_SUBVOLUME);

        r = btrfs_subvol_snapshot(final, p,
                                  BTRFS_SNAPSHOT_QUOTA|
                                  BTRFS_SNAPSHOT_FALLBACK_COPY|
                                  BTRFS_SNAPSHOT_FALLBACK_DIRECTORY|
                                  BTRFS_SNAPSHOT_RECURSIVE);
        if (r < 0)
                return log_error_errno(r, "Failed to create local image: %m");

        log_info("Created new local image '%s'.", local);

        return 0;
}
