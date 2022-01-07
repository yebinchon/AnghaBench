
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_error ;


 int btrfs_quota_enable (char*,int) ;
 int btrfs_subvol_auto_qgroup (char*,int ,int) ;
 int btrfs_subvol_make_label (char*) ;
 int check_btrfs () ;
 int log_warning_errno (int,char*) ;
 int sd_bus_error_set_errnof (int *,int,char*) ;

int setup_machine_directory(sd_bus_error *error) {
        int r;

        r = check_btrfs();
        if (r < 0)
                return sd_bus_error_set_errnof(error, r, "Failed to determine whether /var/lib/machines is located on btrfs: %m");
        if (r == 0)
                return 0;

        (void) btrfs_subvol_make_label("/var/lib/machines");

        r = btrfs_quota_enable("/var/lib/machines", 1);
        if (r < 0)
                log_warning_errno(r, "Failed to enable quota for /var/lib/machines, ignoring: %m");

        r = btrfs_subvol_auto_qgroup("/var/lib/machines", 0, 1);
        if (r < 0)
                log_warning_errno(r, "Failed to set up default quota hierarchy for /var/lib/machines, ignoring: %m");

        return 1;
}
