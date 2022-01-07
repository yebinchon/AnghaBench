
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_2__ {int polkit_registry; } ;
typedef TYPE_1__ Manager ;


 int CAP_SYS_ADMIN ;
 int ENOTTY ;
 int FILE_SIZE_VALID_OR_INFINITY (int ) ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int UID_INVALID ;
 int assert (int *) ;
 int btrfs_qgroup_set_limit (char*,int ,int ) ;
 int btrfs_subvol_set_subtree_quota_limit (char*,int ,int ) ;
 int bus_verify_polkit_async (int *,int ,char*,int *,int,int ,int *,int *) ;
 int sd_bus_error_set_errnof (int *,int,char*) ;
 int sd_bus_error_setf (int *,int ,char*) ;
 int sd_bus_message_read (int *,char*,int *) ;
 int sd_bus_reply_method_return (int *,int *) ;

__attribute__((used)) static int method_set_pool_limit(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        uint64_t limit;
        int r;

        assert(message);

        r = sd_bus_message_read(message, "t", &limit);
        if (r < 0)
                return r;
        if (!FILE_SIZE_VALID_OR_INFINITY(limit))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "New limit out of range");

        r = bus_verify_polkit_async(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.portable1.manage-images",
                        ((void*)0),
                        0,
                        UID_INVALID,
                        &m->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        (void) btrfs_qgroup_set_limit("/var/lib/portables", 0, limit);

        r = btrfs_subvol_set_subtree_quota_limit("/var/lib/portables", 0, limit);
        if (r == -ENOTTY)
                return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Quota is only supported on btrfs.");
        if (r < 0)
                return sd_bus_error_set_errnof(error, r, "Failed to adjust quota limit: %m");

        return sd_bus_reply_method_return(message, ((void*)0));
}
